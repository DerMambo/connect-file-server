Package.describe({
  summary: "Application file server."
});

Npm.depends({
  connect: "2.7.10"
});

Package.on_use(function(api) {
  api.use(['webapp', 'routepolicy', 'coffeescript'], 'server');

  api.add_files([
    'connect-file-server.coffee',
  ], 'server');
});