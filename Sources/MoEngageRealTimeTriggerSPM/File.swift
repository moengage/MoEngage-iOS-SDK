import MoEngageRealTimeTrigger

/// Always-linked reference into `MoEngageRealTimeTrigger`.
///
/// The module ships as a static framework — an archive whose members the linker pulls in
/// only when something references a symbol they define. An integrator who links this
/// product but relies on event-triggered campaigns never names a symbol from it, so no
/// member is pulled and the module is never initialised.
///
/// SPM links this source target as part of the product, so it is not subject to that
/// member selection. Naming the module's public entry class supplies the missing
/// reference. Each static module is built as a single object file
/// (`GENERATE_MASTER_OBJECT_FILE`), so this one reference links the whole module —
/// including classes the SDK resolves by name and `@objcMembers` methods declared in
/// extensions.
///
/// Deliberately `public`: an internal declaration nothing uses can be optimised away
/// before the linker sees it, which would reintroduce the defect.
public enum MoEngageRealTimeTriggerSPMLinkage {
    public static let retained: [AnyClass] = [MoEngageSDKRealTimeTrigger.self]
}
