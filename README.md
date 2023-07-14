# Test-DNS
Необхідно виміряти швидкість резолвінгу наступних серверів DNS 
- Unbound.
- PowerDNS Recursor
- pdnsd
- MaraDNS
- Knot Resolver
- djbdns dnscache
- BIND
    Для цього необхідно створити скрипт, який резолвить 100 унікальних доменних імен (всі доменні імена повинні бути в різних DNS-зонах) та вимірює витрачений час на резолвінг через кожен вказаних DNS-серверів. Результати заносятся в стопчик файлу csv. Кеш сервера повинний буди очищений перед кожним вимірюванням. Вимірювання провести не менше 3-х разів на кожен сервер.

    Для вимірювання використовувався bash-скрипт.
