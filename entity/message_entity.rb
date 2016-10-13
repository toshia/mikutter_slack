# -*- coding: utf-8 -*-

module Plugin::Slack
  module Entity

    # イワシがいっぱいだあ…ちょっとだけもらっていこうかな
    MessageEntity = Retriever::Entity::RegexpEntity.
        filter(/:(?:\w+):/, generator: -> s {
          s.merge(open: 'http://totori.dip.jp/')
        })

  end
end
