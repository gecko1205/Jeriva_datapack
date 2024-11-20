import os
import shutil

os.chdir(os.path.dirname(os.path.realpath(__file__))) # Muda o diretório para o local do arquivo
namespace = 'jrv'

class ItemManager:
    def __init__(self, item_name: str) -> None:
        self.namespace = namespace
        self.item_name = item_name
        self.function_directory = os.path.join('data', self.namespace, 'function', 'item', self.item_name)
        self.advancement_directory = os.path.join('data', self.namespace, 'advancement', 'item', self.item_name)

    def generate(self) -> None:
        os.makedirs(self.function_directory, exist_ok=True)
        os.makedirs(self.advancement_directory, exist_ok=True)
    
        # function/acquire
        function_acquire_path = os.path.join(self.function_directory, 'acquire.mcfunction')
        function_acquire_command = f'''
execute unless score item.{self.item_name} jrv matches 1.. run function jrv:item/{self.item_name}/reward
'''
        with open(function_acquire_path, 'w') as file:
            file.write(function_acquire_command.strip())
            
        # function/reward
        function_reward_path = os.path.join(self.function_directory, 'reward.mcfunction')
        function_reward_command = f'''
scoreboard players add item.{self.item_name} jrv 1
function jrv:announce/item {{name:"{self.item_name}"}}
'''
        with open(function_reward_path, 'w') as file:
            file.write(function_reward_command.strip())
            
        # advancement/acquire
        advancement_acquire_path = os.path.join(self.advancement_directory, 'acquire.mcfunction')
        advancement_acquire_command = f'''
'''
        with open(advancement_acquire_path, 'w') as file:
            file.write(advancement_acquire_command.strip())
            
        # advancement/use
        use_path = os.path.join(self.advancement_directory, 'use.mcfunction')
        use_command = f'''
'''
        with open(use_path, 'w') as file:
            file.write(use_command.strip())
        print(f"Arquivos gerados para o item '{self.item_name}'")

    def delete(self) -> None:
        if os.path.exists(self.function_directory) and os.path.isdir(self.function_directory):
            shutil.rmtree(self.function_directory)
            print(f"Item '{self.item_name}' foi excluído.")
        else:
            print(f"O item '{self.item_name}' não existe.")

item_manager = ItemManager('unknown')

item_manager.generate()
#item_manager.delete()