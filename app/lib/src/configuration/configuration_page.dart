import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:listinha/src/shared/stores/app_store.dart';

class ConfigurationPage extends StatefulWidget {
  const ConfigurationPage({super.key});

  @override
  State<ConfigurationPage> createState() => _ConfigurationPageState();
}

class _ConfigurationPageState extends State<ConfigurationPage> {
  @override
  Widget build(BuildContext context) {
    final appStore = context.watch<AppStore>(
      (bind) => bind.themeMode,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listinha'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Configurações',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Tema',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: 10,
            ),
            RadioListTile(
              value: ThemeMode.system,
              title: const Text('Sistema'),
              groupValue: appStore.themeMode.value,
              onChanged: (value) => appStore.themeMode.value = value!,
            ),
            RadioListTile(
              value: ThemeMode.light,
              title: const Text('Claro'),
              groupValue: appStore.themeMode.value,
              onChanged: (value) => appStore.themeMode.value = value!,
            ),
            RadioListTile(
              value: ThemeMode.dark,
              title: const Text('Escuro'),
              groupValue: appStore.themeMode.value,
              onChanged: (value) => appStore.themeMode.value = value!,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Controle de Dados',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: 10,
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Apagar cache e reiniciar o app'),
            ),
          ],
        ),
      ),
    );
  }
}
