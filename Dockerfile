FROM ruby:3.0.0


RUN apt-get update -qq && apt-get install -y nodejs postgresql-client npm
RUN npm i -g yarn && yarn
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN rm -rf /var/lib/gems/2.6.x/cache/*

RUN adduser --disabled-password --gecos "" web

RUN mkdir /Rails_project
WORKDIR /Rails_project
COPY Gemfile /Rails_project/Gemfile
COPY Gemfile.lock /Rails_project/Gemfile.lock

RUN chown -R web:web /Rails_project

USER web
WORKDIR /Rails_project

ENV PATH /home/Rails_project/.gem/ruby/2.3.0/bin:$PATH
ENV GEM_HOME /home/Rails_project/.gem/ruby/2.3.0

USER root
WORKDIR /Rails_project

RUN gem install bundler
RUN gem install rake
RUN bundle install
COPY . /Rails_project



# Add a script to be executed every time the container starts.
# COPY entrypoint.sh /usr/bin/
# RUN chmod +x /usr/bin/entrypoint.sh
# ENTRYPOINT ["entrypoint.sh"]
# EXPOSE 3000

# Start the main process.
# CMD ["rails", "server", "-b", "0.0.0.0"]
CMD bundle exec rails s -p $PORT -b '0.0.0.0'