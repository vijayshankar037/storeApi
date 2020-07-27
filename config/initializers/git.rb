# frozen_string_literal: true

module StoreApi
  REVISION = `git log --pretty=format:'%h' -n 1`.freeze
end
