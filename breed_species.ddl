conn = connectTo 'jdbc:oracle:thin:@sayonara.microlab.cs.utexas.edu:1521:orcl' 'C##cs347_hrn244' 'orcl_hrn244' 'rdf_mode' 'E4';

Neo4j on conn "CREATE (:breed { BREEDNO : 1, BREEDNAME : 'Golden Retriever', AVGWEIGHT : 65, ASIZE : 'L', INTELLIGENCE : 5, LIFESPAN : 11, SPECIESNO : 10})"
Neo4j on conn "CREATE (:breed { BREEDNO : 2, BREEDNAME : 'Husky', AVGWEIGHT : 45, ASIZE : 'L', INTELLIGENCE : 4, LIFESPAN : 15, SPECIESNO : 10})"
Neo4j on conn "CREATE (:breed { BREEDNO : 3, BREEDNAME : 'Dachshund', AVGWEIGHT : 25, ASIZE : 'S', INTELLIGENCE : 3, LIFESPAN : 13, SPECIESNO : 10})"
Neo4j on conn "CREATE (:breed { BREEDNO : 4, BREEDNAME : 'Dalmation', AVGWEIGHT : 50, ASIZE : 'M', INTELLIGENCE : 4, LIFESPAN : 15, SPECIESNO : 10})"
Neo4j on conn "CREATE (:breed { BREEDNO : 5, BREEDNAME : 'Siamese', AVGWEIGHT : 8, ASIZE : 'S', INTELLIGENCE : 3, LIFESPAN : 18, SPECIESNO : 20})"
Neo4j on conn "CREATE (:breed { BREEDNO : 6, BREEDNAME : 'Persian', AVGWEIGHT : 10, ASIZE : 'S', INTELLIGENCE : 2, LIFESPAN : 15, SPECIESNO : 20})"
Neo4j on conn "CREATE (:breed { BREEDNO : 7, BREEDNAME : 'Snow Leopard', AVGWEIGHT : 72, ASIZE : 'M', INTELLIGENCE : 3, LIFESPAN : 16, SPECIESNO : 20})"
Neo4j on conn "CREATE (:breed { BREEDNO : 8, BREEDNAME : 'Lion', AVGWEIGHT : 420, ASIZE : 'L', INTELLIGENCE : 5, LIFESPAN : 12, SPECIESNO : 20})"
Neo4j on conn "CREATE (:breed { BREEDNO : 9, BREEDNAME : 'Tiger', AVGWEIGHT : 400, ASIZE : 'L', INTELLIGENCE : 5, LIFESPAN : 23, SPECIESNO : 20})"
Neo4j on conn "CREATE (:breed { BREEDNO : 10, BREEDNAME : 'Capuchin', AVGWEIGHT : 2, ASIZE : 'S', INTELLIGENCE : 4, LIFESPAN : 25, SPECIESNO : 30})"
Neo4j on conn "CREATE (:breed { BREEDNO : 11, BREEDNAME : 'Baboon', AVGWEIGHT : 60, ASIZE : 'M', INTELLIGENCE : 2, LIFESPAN : 40, SPECIESNO : 30})"
Neo4j on conn "CREATE (:breed { BREEDNO : 12, BREEDNAME : 'Orangutan', AVGWEIGHT : 100, ASIZE : 'L', INTELLIGENCE : 5, LIFESPAN : 40, SPECIESNO : 30})"
Neo4j on conn "CREATE (:breed { BREEDNO : 13, BREEDNAME : 'Japanese Macaque', AVGWEIGHT : 25, ASIZE : 'S', INTELLIGENCE : 3, LIFESPAN : 6, SPECIESNO : 30})"

Neo4j on conn "CREATE (:species { SPECIESNO : 10, ANAME : 'DOG' })"
Neo4j on conn "CREATE (:species { SPECIESNO : 20, ANAME : 'CAT' })"
Neo4j on conn "CREATE (:species { SPECIESNO : 30, ANAME : 'MONKEY' })"

Neo4j on conn "MATCH (a:breed),(b:species) WHERE a.SPECIESNO = 10 AND b.SPECIESNO = 10 CREATE (a)<-[:breeds]-(b)"
Neo4j on conn "MATCH (a:breed),(b:species) WHERE a.SPECIESNO = 20 AND b.SPECIESNO = 20 CREATE (a)<-[:breeds]-(b)"
Neo4j on conn "MATCH (a:breed),(b:species) WHERE a.SPECIESNO = 30 AND b.SPECIESNO = 30 CREATE (a)<-[:breeds]-(b)"

Neo4j on conn "MATCH(a:breed)<-[:breeds]-(b:species) WHERE b.SPECIESNO = 20 RETURN b, a.BREEDNAME, a.AVGWEIGHT, a.ASIZE, a.SPECIESNO, a.INTELLIGENCE"

Neo4j on conn "MATCH (a:breed),(b:species) WHERE a.SPECIESNO = 10 AND b.SPECIESNO = 10 CREATE (a)-[:species]->(b)"
Neo4j on conn "MATCH (a:breed),(b:species) WHERE a.SPECIESNO = 20 AND b.SPECIESNO = 20 CREATE (a)-[:species]->(b)"
Neo4j on conn "MATCH (a:breed),(b:species) WHERE a.SPECIESNO = 30 AND b.SPECIESNO = 30 CREATE (a)-[:species]->(b)"

Neo4j on conn "MATCH(a:breed)-[:species]->(b:species)  RETURN b.ANAME, a.BREEDNAME"
