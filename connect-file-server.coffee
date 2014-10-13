connect = Npm.require('connect')

RoutePolicy.declare('/uploads', 'network')

staticPath = process.env['APP_DYN_CONTENT_DIR']

if staticPath
  WebApp.connectHandlers
  .use('/uploads', connect.static())
else
  console.warn 'WARNING: You are using connect-file-server but did not specify a APP_DYN_CONTENT_DIR environment variable'