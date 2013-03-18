window.bitmaker = angular.module 'bitmaker', []
config = ($httpProvider) ->
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
  $httpProvider.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest'
bitmaker.config [ '$httpProvider', config ]
