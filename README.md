# Test-DNS
Необхідно виміряти швидкість резолвінгу наступних серверів DNS 
- Unbound.
- PowerDNS Recursor
- pdnsd
- Maradns-deadwood
- Knot Resolver
- djbdns dnscache
- BIND

Для цього необхідно створити скрипт, який резолвить 100 унікальних доменних імен (всі доменні імена повинні бути в різних DNS-зонах) та вимірює витрачений час на резолвінг через кожен вказаних DNS-серверів. Результати заносятся в стопчик файлу csv. Кеш сервера повинний буди очищений перед кожним вимірюванням. Вимірювання провести не менше 3-х разів на кожен сервер.

- Для вимірювання швидкості резолвінгу використовувався bash-скрипт - https://github.com/Pozzzitif1980/Test-DNS/blob/main/test.sh

- Для вимірювання середнього значення та занесення результату в файл виконувався наступний bash-скрипт - https://github.com/Pozzzitif1980/Test-DNS/blob/main/dns.sh

- Результат заноситься до файлу - results.csv
    
Результати вимірювання за посиланням -https://docs.google.com/spreadsheets/d/1Rbge19hCPul1Id16NTdiec3y4c-6KyGCSYG3jTBxtM4/edit#gid=1344888270
