import Vapor

/// Called before your application initializes.
///
/// [Learn More →](https://docs.vapor.codes/3.0/getting-started/structure/#configureswift)
public func configure(
    _ config: inout Config,
    _ env: inout Environment,
    _ services: inout Services
) throws {
    // register routes to router
    let router = EngineRouter.default()
    try router.register(collection: Routes())

    services.register(router, as: Router.self)

    // configure your application here
}
