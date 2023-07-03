module github.com/deepfabric/elasticell

go 1.19

require (
	github.com/coreos/etcd v3.3.17+incompatible
	github.com/coreos/pkg v0.0.0-20180928190104-399ea9e2e55f
	github.com/deepfabric/go-nemo v0.0.0-20190419084252-5ec7afa882c6
	github.com/fagongzi/goetty v1.3.1
	github.com/fagongzi/log v0.0.0-20190424080438-6b79fa3fda5a
	github.com/fagongzi/util v0.0.0-20191031020235-c0f29a56724d
	github.com/garyburd/redigo v1.6.0
	github.com/gogo/protobuf v1.3.1
	github.com/golang/protobuf v1.3.2
	github.com/google/btree v1.0.0
	github.com/gorilla/mux v1.7.3
	github.com/montanaflynn/stats v0.5.0
	github.com/pilosa/pilosa v1.4.0
	github.com/pingcap/check v0.0.0-20190102082844-67f458068fc8
	github.com/pkg/errors v0.8.1
	github.com/prometheus/client_golang v1.2.1
	github.com/prometheus/common v0.7.0
	github.com/shirou/gopsutil v2.21.11+incompatible
	github.com/unrolled/render v1.0.1
	github.com/urfave/negroni v1.0.0
	golang.org/x/net v0.0.0-20191028085509-fe3aa8a45271
	golang.org/x/sync v0.0.0-20190911185100-cd5d95a43a6e
	golang.org/x/time v0.0.0-20191024005414-555d28b269f0
	google.golang.org/grpc v1.24.0
)

require (
	github.com/beorn7/perks v1.0.1 // indirect
	github.com/cespare/xxhash/v2 v2.1.0 // indirect
	github.com/coreos/bbolt v1.3.3 // indirect
	github.com/coreos/go-semver v0.3.0 // indirect
	github.com/coreos/go-systemd v0.0.0-20190719114852-fd7a80b32e1f // indirect
	github.com/deepfabric/c-nemo v0.0.0-20200512075312-b836bc944d11 // indirect
	github.com/dgrijalva/jwt-go v3.2.0+incompatible // indirect
	github.com/funny/slab v0.0.0-20180511031532-b1fad5e5d478 // indirect
	github.com/go-ole/go-ole v1.2.6 // indirect
	github.com/golang/groupcache v0.0.0-20191027212112-611e8accdfc9 // indirect
	github.com/google/uuid v1.1.1 // indirect
	github.com/gorilla/websocket v1.4.1 // indirect
	github.com/grpc-ecosystem/go-grpc-middleware v1.1.0 // indirect
	github.com/grpc-ecosystem/go-grpc-prometheus v1.2.0 // indirect
	github.com/grpc-ecosystem/grpc-gateway v1.11.3 // indirect
	github.com/jonboulle/clockwork v0.1.0 // indirect
	github.com/json-iterator/go v1.1.7 // indirect
	github.com/konsorten/go-windows-terminal-sequences v1.0.1 // indirect
	github.com/matttproud/golang_protobuf_extensions v1.0.1 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.1 // indirect
	github.com/prometheus/client_model v0.0.0-20190812154241-14fe0d1b01d4 // indirect
	github.com/prometheus/procfs v0.0.5 // indirect
	github.com/sirupsen/logrus v1.4.2 // indirect
	github.com/soheilhy/cmux v0.1.4 // indirect
	github.com/tklauser/go-sysconf v0.3.11 // indirect
	github.com/tmc/grpc-websocket-proxy v0.0.0-20190109142713-0ad062ec5ee5 // indirect
	github.com/xiang90/probing v0.0.0-20190116061207-43a291ad63a2 // indirect
	github.com/yusufpapurcu/wmi v1.2.3 // indirect
	go.etcd.io/bbolt v1.3.3 // indirect
	go.uber.org/atomic v1.4.0 // indirect
	go.uber.org/multierr v1.1.0 // indirect
	go.uber.org/zap v1.11.0 // indirect
	golang.org/x/crypto v0.0.0-20190426145343-a29dc8fdc734 // indirect
	golang.org/x/sys v0.9.0 // indirect
	golang.org/x/text v0.3.2 // indirect
	google.golang.org/genproto v0.0.0-20190819201941-24fa4b261c55 // indirect
	gopkg.in/yaml.v2 v2.2.2 // indirect
	sigs.k8s.io/yaml v1.1.0 // indirect
)

replace github.com/coreos/etcd => github.com/deepfabric/etcd v3.3.17+incompatible

replace github.com/deepfabric/go-nemo => ../../deepfabric/go-nemo
