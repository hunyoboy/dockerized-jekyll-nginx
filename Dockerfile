FROM jekyll/jekyll:latest

MAINTAINER Joel Capillo

ARG build_command
ENV BUILD_COMMAND ${build_command}

# You can add your specific gems here:
# RUN gem install redcarpet

CMD ${BUILD_COMMAND}