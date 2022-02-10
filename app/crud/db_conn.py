
from sqlalchemy import create_engine

# username:password@host:port/database
# set name of container (db) instead of localhost
engine = create_engine("postgresql://username:password@db2:5432/nudges")

