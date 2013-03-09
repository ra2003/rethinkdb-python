PROTOC=protoc
RETHINKDB_HOME=../..
PROTO_FILE_DIR=$(RETHINKDB_HOME)/src/rdb_protocol
PROTO_BASE=ql2
PROTO_FILE=$(PROTO_FILE_DIR)/$(PROTO_BASE).proto
BUILD_DIR=rethinkdb
PYTHON_PB_FILE=$(BUILD_DIR)/$(PROTO_BASE)_pb2.py

$(PYTHON_PB_FILE): $(PROTO_FILE)
	$(PROTOC) --python_out=$(BUILD_DIR) -I$(PROTO_FILE_DIR) $(PROTO_FILE)

clean:
	rm $(PYTHON_PB_FILE)
