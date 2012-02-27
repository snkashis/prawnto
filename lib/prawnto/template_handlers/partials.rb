module Prawnto
  module TemplateHandlers
    module Partials

      def render_partial(path, prawn_object = pdf)
        # get the path
        # get file contents (should include a cache somehow?)
        # prawn_object.instance_eval partial_contents
      end

    end
  end
end
