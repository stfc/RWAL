python -m venv ~/.venvs/rwal
source ~/.venvs/rwal/bin/activate
python -m pip install -r requirements.txt
python -m ipykernel install --user --name="RWAL"
deactivate
