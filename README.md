# ViewComponent / Turbo Double Render Bug

This repo is a minimal reproduction of a bug I'm seeing when using ViewComponent with Turbo.

## Steps to reproduce

1. Clone this repo
2. Run `bundle`
4. Run `rails s`
5. Visit http://localhost:3000
6. Click the "Create" button

## Expected behavior

Turbo should submit the form, which results in a redirect and adds a flash message. Turbo should load the redirected page and replace the page content with the loaded page content (including the flash message).

## Actual behavior

Turbo submits the form, which results in a redirect and adds a flash message. Turbo loads the redirected page *twice*, replacing the page content with the second page load. The flash message is lost in the process.

## Notes

The bug only occurs when rendering the component directly from the controller. See: `app/controllers/button_clicks_controller.rb`. You can try visiting `/fixed` instead to view the same page, but with the component rendered from the view. This works as expected.