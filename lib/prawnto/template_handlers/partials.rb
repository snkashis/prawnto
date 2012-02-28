module Prawnto
  module TemplateHandlers
    module Partials

      def partial!(partial_name, prawn_object = pdf)
        prawn_object.instance_eval partial_source(partial_name)
      end

    private

      def partial_source(partial_name)
        #todo: implement some caching
        File.open( get_file_path(partial_name)).read
      end

      def get_file_path(partial_name)
        root_path = Rails.root
        view_path = File.join(root_path, "app/views/")
        partial_path = cleaned_path(partial_name)

        file_path = Dir[File.join(view_path, partial_path + ".{*.}prawn")].first
        file_path
      end

      def cleaned_path(provided_partial_path)
        *provided_path, file_name = provided_partial_path.split("/")
        file_name = "_"+file_name unless file_name[0] == "_"
        File.join(provided_path, file_name)
      end

    end
  end
end
