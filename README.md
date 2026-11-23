# OpenAir KZ

Open source platform for collecting and sharing air-quality data (PM2.5 and PM10)
from low-cost community sensors in Kazakhstan. First pilot area: **Almaty**.

Anyone can build a sensor, send data to the platform, and use the open map and
open API for study, reporting, or decision-making.

## Mission and SDG alignment

Winter smog is a serious problem in Almaty, and official monitoring stations are few.
OpenAir KZ makes district-level air data open and easy to access.

| SDG | Target | How the project contributes |
| --- | --- | --- |
| **SDG 11** Sustainable Cities and Communities (main) | 11.6 – reduce the environmental impact of cities, with attention to air quality | Open district-level air-quality map and API |
| **SDG 3** Good Health and Well-being | 3.9 – reduce illness from pollution | Residents and schools can see where pollution is highest |
| **SDG 13** Climate Action | – | Open data for researchers and local authorities |

## Ownership

OpenAir KZ is owned by the **OpenAir KZ Team** (student team, KBTU, Almaty).
Team members hold the copyright to their contributions under Apache 2.0.
No company or third party claims ownership of the code, the name, or the data.
See [NOTICE](NOTICE).

## Quick start

```bash
git clone https://github.com/REPLACE_ORG/openair-kz.git
cd openair-kz
docker compose up --build
```

- Map: http://localhost:8000
- API docs (OpenAPI): http://localhost:8000/docs
- Send a measurement:

```bash
curl -X POST http://localhost:8000/api/v1/measurements \
  -H "Content-Type: application/json" \
  -d '{"sensor_id":"alm-001","lat":43.238,"lon":76.945,"pm25":42.5,"pm10":71.0}'
```

## Tech stack (all open source)

Python (FastAPI) · PostgreSQL · Leaflet · OpenStreetMap · Docker

## Documentation

See the [`/docs`](docs/) folder or the documentation site:
https://REPLACE_ORG.github.io/openair-kz/

## Contributing

Read [CONTRIBUTING.md](CONTRIBUTING.md) and our [Code of Conduct](CODE_OF_CONDUCT.md).
Report security issues as described in [SECURITY.md](SECURITY.md).

## License

- Code: [Apache License 2.0](LICENSE)
- Data and documentation: [CC BY 4.0](LICENSE-DATA.md)

## DPG self-assessment

See [docs/dpg-self-assessment.md](docs/dpg-self-assessment.md).
