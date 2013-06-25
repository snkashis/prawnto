# Contributing & Reporting Issues

Obviously, all code contributions are greatly appreciated. We also need help with testing and the wiki.

While I can't promise the most speedy response, I do plan to continue to maintain this gem. Please feel free to report any issues, provide feedback, or make suggestions on the {Issue Tracker}[http://github.com/getjobber/prawnto/issues]

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Testing

prawnto uses appraisal to run tests for different versions of prawn. In order to
run the specs you first need to install the dependencies for each appraisal:

  rake appraisal:install

Then you can run the tests for a specifc version of rails:

  rake appraisal:rails3
  rake appraisal:rails4
