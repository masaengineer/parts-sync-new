// Entry point for the build script in your package.json
console.log("Loading application.js");

import { Turbo } from '@hotwired/turbo-rails';
Turbo.start();

import { Application } from '@hotwired/stimulus';
import { registerControllers } from './controllers';

// Import and initialize iconify-icon
import 'iconify-icon';

console.log("Starting Stimulus application");
const application = Application.start();
console.log("Registering controllers");
registerControllers(application);
console.log("Controllers registered");
