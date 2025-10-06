<?php

namespace Wszdb\FlarumAiChat;

use Flarum\Foundation\AbstractServiceProvider;
use Illuminate\Contracts\Container\Container;
use Illuminate\Contracts\Events\Dispatcher;
use Wszdb\FlarumAiChat\Agent\Action;

class BindingsProvider extends AbstractServiceProvider
{
    public function register()
    {
        // See https://docs.flarum.org/extend/service-provider.html#service-provider for more information.
    }

    public function boot(Container $container)
    {
        Action::setEventDispatcher($this->container->make(Dispatcher::class));
        Action::setAgent($this->container->make(Agent::class));
    }
}
