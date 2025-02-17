# InfraMaster

## Опис
InfraMaster - це потужна платформа для автоматизації управління інфраструктурою, що включає модулі для управління віртуальними машинами, контейнерами, мережевими ресурсами та оркестрацією.

## Структура проекту
Проект розділений на кілька шарів для покращення читабельності та підтримуваності коду:

- **Domain**: Основна бізнес-логіка та правила.
- **Application**: Інтерфейси, юзкейси та реалізації для роботи з даними.
- **Infrastructure**: Реалізація деталей інфраструктури, таких як моделі даних, контролери та утиліти.
- **Presentation**: Візуалізація даних та взаємодія з користувачем.

## Встановлення
1. Клонуйте репозиторій:
    ```bash
    git clone <URL репозитарію>
    ```
2. Перейдіть до каталогу проекту:
    ```bash
    cd infra_master
    ```
3. Встановіть необхідні залежності:
    ```bash
    bundle install
    ```

## Запуск
Для запуску проекту виконайте наступну команду:
```bash
ruby app/application/Main.rb
```

## Структура каталогів
```plaintext
infra_master/
├── app/
│   ├── domain/
│   │   ├── entities/
│   │   │   ├── VirtualMachine.rb
│   │   │   └── Container.rb
│   │   ├── repositories/
│   │   │   └── VirtualMachineRepository.rb
│   │   ├── services/
│   │   │   └── VirtualMachineService.rb
│   │   └── use_cases/
│   │       └── ManageVirtualMachine.rb
│   ├── infrastructure/
│   │   ├── models/
│   │   │   └── VirtualMachineModel.rb
│   │   ├── repositories/
│   │   │   └── VirtualMachineRepositoryImpl.rb
│   │   ├── controllers/
│   │   │   └── VirtualMachineController.rb
│   ├── application/
│       └── Main.rb
├── config/
│   └── application.yml
├── spec/
│   └── virtual_machine_service_spec.rb
├── Gemfile
└── README.md
```

## Опис компонентів
### Domain
- **VirtualMachine.rb**: Клас сутності віртуальної машини.
- **Container.rb**: Клас сутності контейнера.
- **VirtualMachineRepository.rb**: Інтерфейс репозиторію віртуальних машин.

### Application
- **ManageVirtualMachine.rb**: Юзкейс для управління віртуальними машинами.
- **VirtualMachineService.rb**: Сервіс для управління віртуальними машинами.

### Infrastructure
- **VirtualMachineModel.rb**: Модель даних віртуальної машини.
- **VirtualMachineRepositoryImpl.rb**: Реалізація репозиторію віртуальних машин.
- **VirtualMachineController.rb**: Контролер для управління віртуальними машинами.

### Presentation
- **DataView.rb**: Відображення даних (якщо необхідно).

## Ліцензія
Цей проект ліцензовано під ліцензією MIT. Для отримання додаткової інформації див. файл LICENSE.
