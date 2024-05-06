# TLDR

## How was this researched?

A identical project was setup for each web solution, this includes:

- global state
- dynamic layouts
- (data) grids with resizable columns
- (data) grid in (data) grid
- form wizard with validation
- normal forms without a wizard
- internationalisation
- progressive loading (for the (data) grid contents)
- drag an drop with confirmation dialog

## What solutions were evaluated?

- React
- Vue
- Svelte
- Angular
- Hilla
- Lit
<!-- - Thymeleaf + HTMX + AlpineJS + TailwindCSS -->

## Notes per solution

### React 

```diff
+ stable update system
+ gets used a lot (including in enterprises)
+ boilerplate free (besides setup which is automated by Vite)
+ extremely big ecosystem
+ great documentation
+ performant in combination with the million library
+ professional support is available through 3rd parties
+ backed by Facebook
+ interchangeable renderer (eg React native)
~ Redux for global state management (requires some boilerplate)
~ you use JSX instead of html/js
~ it is not a framework, only the rendering engine
~ client rendered (ssr components are experimental)
- state management can easily become complex in bigger components
- because of the VDOM tree you can have some unexpected behavior
- runtime optimizations (not at compile time)


```

### Vue

```diff
+ Pinia for global state management (officially supported)
+ code is confined in one file (custom file type) and easily readable
+ boilerplate free (besides setup which is automated by Vite)
+ big ecosystem
+ great documentation with interactive walkthrough
+ gets used a lot (including in enterprises)
+ performant out of the box
+ professional support is available through 3rd parties
+ easy state management, even in complex components
+ backed by (financially stable) open source contributors
~ uses VDOM, but makes compile time optimizations for this and for its state management
~ client rendered (Nuxt or VuePress solve this)
- nested generics can cause troubles
```

### Svelte

```diff
+ no VDOM overhead
+ client side with officially supported server side SvelteKit solution
+ code is confined in one file (custom file type) and is easily readable and understandable without prior knowledge
+ great documentation with interactive walkthrough
+ gets used a lot (including in enterprises)
+ big ecosystem
+ compile time optimisations
+ very similar to vue 
+ style is automatically scoped (this can be easily bypassed with the :global selector when necessary)
+ backed by Vercel
+ most loved/admired js framework according to the stack overflow survey (this can indicate how the DX feels)
+ performant out of the box
+ warns for accessibility (if you don't want this you can disable them, but on by default)
~ anti boilerplate (this causes some troubles with ease of state management, but this is solved in svelte 5 by runes)
- didn't feel mature enough for usage without Svelte Kit 


```

### Angular

```diff
+ no VDOM overhead
+ lots of built in/standard dependencies
+ client side, but has SSR baked in
+ big ecosystem
+ dependency injection
+ great documentation
+ standard typescript and html files (custom templating language in the html)
+ scope of css is easily determinable
+ backed by Google
+ lots of usage (especially in enterprises)
+ CLI application to generate the basic boilerplate
+ stable updating process
+ build in routing framework is stable and powerful
+ instead of components css selectors are used, this gives you much more power to create advanced component behavior
- state management is complex (eg, to ways of managing state, with and without signals; but signals can only expect signals as argument)
- templating language is less powerful compared to the other solutions (eg argument passing to slots)
- complex syntax
- i18n can not change in development mode (a separate build is required for each language)
- uses different terminologies than all other frameworks
- lots of boilerplate (mostly for legacy purposes)
- doesn't always use the type systems (eg for an @input you have to explicitly set required: true, instead of deriving this form the typescript type)
```

### Lit

```diff
+ no VDOM
+ browser native api's (web components)
+ not much boilerplate
+ plain html, js/ts
+ create components for-/compatible with- any web framework
+ W3C compliant
+ Backed by Google
~ client side (SSR is experimental)
~ mediocre ecosystem
~ mediocre documentation (as result: <https://github.com/lit/lit/issues/4617>, and <https://github.com/lit/lit/issues/4618>)
~ uses the shadow DOM
- IDE integration is suboptimal compared to other frameworks
- calls are a reference by default, which binds another `this` to the call. This can cause confusing behavior.
```

### Hilla

This takes all notes of React and/or Lit as it gets used in combination with one of these two. *(React usage is reccomended)*

```diff
+ makes frontend <-> backend communication very easy
+ type safety
+ automatic CSRF protection
+ provided Vaadin components are easy to use
~ automatically converts types (was unable to convert custom records with generics & method overloading seemingly takes a random overloaded method, which can case confusion)
- doesn't follow REST specification (so it is always a POST request which hinders caching optimizations)
- requires usage of Spring Boot with React or Lit
- Java types have to be extremely explicit with custom @Notnull decorator
```