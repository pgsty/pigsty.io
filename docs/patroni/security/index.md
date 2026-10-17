# Security Considerations

> Security considerations for DCS, REST API, and credential handling.

---

LLMS index: [llms.txt](/llms.txt)

---

> Source: https://patroni.readthedocs.io/en/latest/security.html

<a id="security"></a>
Protect two Patroni cluster interfaces from unauthorized access: the distributed configuration storage (DCS) and the Patroni REST API.

--------

## Protecting DCS

Patroni and [patronictl](/docs/patroni/patronictl#patronictl) store data in the DCS and retrieve data from it.

The DCS contains no sensitive information, but it permits changes to some Patroni/Postgres settings. Protect the DCS first.

Protection depends on the DCS type. See [settings](/docs/patroni/config/yaml#yaml) for authentication and encryption parameters: tokens, basic authentication, and client certificates.

The general recommendation is to enable TLS for all DCS communication.

--------

## Protecting the REST API

Protecting the REST API is a more complicated task.

Patroni uses its REST API during leader races. The [patronictl](/docs/patroni/patronictl#patronictl) tool uses it for failovers, switchovers, reinitialization, restarts, and reloads. HAProxy and other load balancers use it for HTTP health checks. You can also use it for monitoring.

The REST API has safe endpoints (`GET` requests) that only retrieve information. Unsafe endpoints (`PUT`, `POST`, `PATCH` and `DELETE` requests) change node state.

To protect unsafe endpoints with HTTP basic authentication, set `restapi.authentication.username` and `restapi.authentication.password`. Safe endpoints require TLS for protection.

With TLS enabled and a PKI established, API servers and clients can authenticate each other for all endpoints.

The `restapi` section enables TLS client authentication. The `verify_client` parameter specifies which calls require successful client certificate verification. Use `verify_client: required` for all calls, `verify_client: optional` for unsafe calls only, or `verify_client: none` for no calls.

The `ctl` section enables TLS server authentication for the client. The client, [patronictl](/docs/patroni/patronictl#patronictl), uses the same configuration as Patroni. Set `insecure: true` to disable server certificate verification by the client. See [settings](/docs/patroni/config/yaml#patronictl_settings) for TLS client parameters.

PostgreSQL database access protection is outside this document. See <https://www.postgresql.org/docs/current/client-authentication.html>.
