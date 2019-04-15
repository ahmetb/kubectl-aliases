# Copyright 2019 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

function k([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl $params }
function ksys([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system $params }
function ka([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl apply --recursive -f $params }
function ksysa([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system apply --recursive -f $params }
function kex([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl exec -i -t $params }
function ksysex([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system exec -i -t $params }
function klo([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl logs -f $params }
function ksyslo([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system logs -f $params }
function klop([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl logs -f -p $params }
function ksyslop([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system logs -f -p $params }
function kp([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl proxy $params }
function kg([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get $params }
function ksysg([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get $params }
function kd([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe $params }
function ksysd([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system describe $params }
function krm([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete $params }
function ksysrm([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system delete $params }
function krun([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl run --rm --restart=Never --image-pull-policy=IfNotPresent -i -t $params }
function ksysrun([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system run --rm --restart=Never --image-pull-policy=IfNotPresent -i -t $params }
function kgpo([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods $params }
function ksysgpo([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods $params }
function kdpo([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe pods $params }
function ksysdpo([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system describe pods $params }
function krmpo([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete pods $params }
function ksysrmpo([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system delete pods $params }
function kgdep([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment $params }
function ksysgdep([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment $params }
function kddep([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe deployment $params }
function ksysddep([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system describe deployment $params }
function krmdep([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete deployment $params }
function ksysrmdep([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system delete deployment $params }
function kgsvc([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service $params }
function ksysgsvc([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get service $params }
function kdsvc([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe service $params }
function ksysdsvc([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system describe service $params }
function krmsvc([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete service $params }
function ksysrmsvc([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system delete service $params }
function kging([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress $params }
function ksysging([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get ingress $params }
function kding([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe ingress $params }
function ksysding([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system describe ingress $params }
function krming([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete ingress $params }
function ksysrming([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system delete ingress $params }
function kgcm([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap $params }
function ksysgcm([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get configmap $params }
function kdcm([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe configmap $params }
function ksysdcm([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system describe configmap $params }
function krmcm([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete configmap $params }
function ksysrmcm([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system delete configmap $params }
function kgsec([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret $params }
function ksysgsec([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get secret $params }
function kdsec([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe secret $params }
function ksysdsec([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system describe secret $params }
function krmsec([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete secret $params }
function ksysrmsec([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system delete secret $params }
function kgno([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get nodes $params }
function kdno([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe nodes $params }
function kgns([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces $params }
function kdns([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe namespaces $params }
function krmns([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete namespaces $params }
function kgoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get -o=yaml $params }
function ksysgoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get -o=yaml $params }
function kgpooyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods -o=yaml $params }
function ksysgpooyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods -o=yaml $params }
function kgdepoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment -o=yaml $params }
function ksysgdepoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment -o=yaml $params }
function kgsvcoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service -o=yaml $params }
function ksysgsvcoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get service -o=yaml $params }
function kgingoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress -o=yaml $params }
function ksysgingoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get ingress -o=yaml $params }
function kgcmoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap -o=yaml $params }
function ksysgcmoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get configmap -o=yaml $params }
function kgsecoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret -o=yaml $params }
function ksysgsecoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get secret -o=yaml $params }
function kgnooyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get nodes -o=yaml $params }
function kgnsoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces -o=yaml $params }
function kgowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get -o=wide $params }
function ksysgowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get -o=wide $params }
function kgpoowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods -o=wide $params }
function ksysgpoowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods -o=wide $params }
function kgdepowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment -o=wide $params }
function ksysgdepowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment -o=wide $params }
function kgsvcowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service -o=wide $params }
function ksysgsvcowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get service -o=wide $params }
function kgingowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress -o=wide $params }
function ksysgingowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get ingress -o=wide $params }
function kgcmowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap -o=wide $params }
function ksysgcmowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get configmap -o=wide $params }
function kgsecowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret -o=wide $params }
function ksysgsecowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get secret -o=wide $params }
function kgnoowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get nodes -o=wide $params }
function kgnsowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces -o=wide $params }
function kgojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get -o=json $params }
function ksysgojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get -o=json $params }
function kgpoojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods -o=json $params }
function ksysgpoojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods -o=json $params }
function kgdepojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment -o=json $params }
function ksysgdepojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment -o=json $params }
function kgsvcojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service -o=json $params }
function ksysgsvcojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get service -o=json $params }
function kgingojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress -o=json $params }
function ksysgingojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get ingress -o=json $params }
function kgcmojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap -o=json $params }
function ksysgcmojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get configmap -o=json $params }
function kgsecojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret -o=json $params }
function ksysgsecojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get secret -o=json $params }
function kgnoojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get nodes -o=json $params }
function kgnsojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces -o=json $params }
function kgall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --all-namespaces $params }
function kdall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe --all-namespaces $params }
function kgpoall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --all-namespaces $params }
function kdpoall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe pods --all-namespaces $params }
function kgdepall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --all-namespaces $params }
function kddepall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe deployment --all-namespaces $params }
function kgsvcall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service --all-namespaces $params }
function kdsvcall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe service --all-namespaces $params }
function kgingall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress --all-namespaces $params }
function kdingall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe ingress --all-namespaces $params }
function kgcmall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap --all-namespaces $params }
function kdcmall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe configmap --all-namespaces $params }
function kgsecall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret --all-namespaces $params }
function kdsecall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe secret --all-namespaces $params }
function kgnsall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces --all-namespaces $params }
function kdnsall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe namespaces --all-namespaces $params }
function kgsl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --show-labels $params }
function ksysgsl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get --show-labels $params }
function kgposl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --show-labels $params }
function ksysgposl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods --show-labels $params }
function kgdepsl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --show-labels $params }
function ksysgdepsl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment --show-labels $params }
function krmall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete --all $params }
function ksysrmall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system delete --all $params }
function krmpoall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete pods --all $params }
function ksysrmpoall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system delete pods --all $params }
function krmdepall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete deployment --all $params }
function ksysrmdepall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system delete deployment --all $params }
function krmsvcall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete service --all $params }
function ksysrmsvcall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system delete service --all $params }
function krmingall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete ingress --all $params }
function ksysrmingall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system delete ingress --all $params }
function krmcmall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete configmap --all $params }
function ksysrmcmall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system delete configmap --all $params }
function krmsecall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete secret --all $params }
function ksysrmsecall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system delete secret --all $params }
function krmnsall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete namespaces --all $params }
function kgw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch $params }
function ksysgw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get --watch $params }
function kgpow([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch $params }
function ksysgpow([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods --watch $params }
function kgdepw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch $params }
function ksysgdepw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment --watch $params }
function kgsvcw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service --watch $params }
function ksysgsvcw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get service --watch $params }
function kgingw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress --watch $params }
function ksysgingw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get ingress --watch $params }
function kgcmw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap --watch $params }
function ksysgcmw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get configmap --watch $params }
function kgsecw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret --watch $params }
function ksysgsecw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get secret --watch $params }
function kgnow([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get nodes --watch $params }
function kgnsw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces --watch $params }
function kgoyamlall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get -o=yaml --all-namespaces $params }
function kgpooyamlall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods -o=yaml --all-namespaces $params }
function kgdepoyamlall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment -o=yaml --all-namespaces $params }
function kgsvcoyamlall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service -o=yaml --all-namespaces $params }
function kgingoyamlall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress -o=yaml --all-namespaces $params }
function kgcmoyamlall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap -o=yaml --all-namespaces $params }
function kgsecoyamlall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret -o=yaml --all-namespaces $params }
function kgnsoyamlall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces -o=yaml --all-namespaces $params }
function kgalloyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --all-namespaces -o=yaml $params }
function kgpoalloyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --all-namespaces -o=yaml $params }
function kgdepalloyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --all-namespaces -o=yaml $params }
function kgsvcalloyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service --all-namespaces -o=yaml $params }
function kgingalloyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress --all-namespaces -o=yaml $params }
function kgcmalloyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap --all-namespaces -o=yaml $params }
function kgsecalloyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret --all-namespaces -o=yaml $params }
function kgnsalloyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces --all-namespaces -o=yaml $params }
function kgwoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch -o=yaml $params }
function ksysgwoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get --watch -o=yaml $params }
function kgpowoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch -o=yaml $params }
function ksysgpowoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods --watch -o=yaml $params }
function kgdepwoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch -o=yaml $params }
function ksysgdepwoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment --watch -o=yaml $params }
function kgsvcwoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service --watch -o=yaml $params }
function ksysgsvcwoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get service --watch -o=yaml $params }
function kgingwoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress --watch -o=yaml $params }
function ksysgingwoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get ingress --watch -o=yaml $params }
function kgcmwoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap --watch -o=yaml $params }
function ksysgcmwoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get configmap --watch -o=yaml $params }
function kgsecwoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret --watch -o=yaml $params }
function ksysgsecwoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get secret --watch -o=yaml $params }
function kgnowoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get nodes --watch -o=yaml $params }
function kgnswoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces --watch -o=yaml $params }
function kgowideall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get -o=wide --all-namespaces $params }
function kgpoowideall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods -o=wide --all-namespaces $params }
function kgdepowideall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment -o=wide --all-namespaces $params }
function kgsvcowideall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service -o=wide --all-namespaces $params }
function kgingowideall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress -o=wide --all-namespaces $params }
function kgcmowideall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap -o=wide --all-namespaces $params }
function kgsecowideall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret -o=wide --all-namespaces $params }
function kgnsowideall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces -o=wide --all-namespaces $params }
function kgallowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --all-namespaces -o=wide $params }
function kgpoallowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --all-namespaces -o=wide $params }
function kgdepallowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --all-namespaces -o=wide $params }
function kgsvcallowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service --all-namespaces -o=wide $params }
function kgingallowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress --all-namespaces -o=wide $params }
function kgcmallowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap --all-namespaces -o=wide $params }
function kgsecallowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret --all-namespaces -o=wide $params }
function kgnsallowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces --all-namespaces -o=wide $params }
function kgowidesl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get -o=wide --show-labels $params }
function ksysgowidesl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get -o=wide --show-labels $params }
function kgpoowidesl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods -o=wide --show-labels $params }
function ksysgpoowidesl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods -o=wide --show-labels $params }
function kgdepowidesl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment -o=wide --show-labels $params }
function ksysgdepowidesl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment -o=wide --show-labels $params }
function kgslowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --show-labels -o=wide $params }
function ksysgslowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get --show-labels -o=wide $params }
function kgposlowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --show-labels -o=wide $params }
function ksysgposlowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods --show-labels -o=wide $params }
function kgdepslowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --show-labels -o=wide $params }
function ksysgdepslowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment --show-labels -o=wide $params }
function kgwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch -o=wide $params }
function ksysgwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get --watch -o=wide $params }
function kgpowowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch -o=wide $params }
function ksysgpowowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods --watch -o=wide $params }
function kgdepwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch -o=wide $params }
function ksysgdepwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment --watch -o=wide $params }
function kgsvcwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service --watch -o=wide $params }
function ksysgsvcwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get service --watch -o=wide $params }
function kgingwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress --watch -o=wide $params }
function ksysgingwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get ingress --watch -o=wide $params }
function kgcmwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap --watch -o=wide $params }
function ksysgcmwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get configmap --watch -o=wide $params }
function kgsecwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret --watch -o=wide $params }
function ksysgsecwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get secret --watch -o=wide $params }
function kgnowowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get nodes --watch -o=wide $params }
function kgnswowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces --watch -o=wide $params }
function kgojsonall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get -o=json --all-namespaces $params }
function kgpoojsonall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods -o=json --all-namespaces $params }
function kgdepojsonall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment -o=json --all-namespaces $params }
function kgsvcojsonall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service -o=json --all-namespaces $params }
function kgingojsonall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress -o=json --all-namespaces $params }
function kgcmojsonall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap -o=json --all-namespaces $params }
function kgsecojsonall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret -o=json --all-namespaces $params }
function kgnsojsonall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces -o=json --all-namespaces $params }
function kgallojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --all-namespaces -o=json $params }
function kgpoallojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --all-namespaces -o=json $params }
function kgdepallojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --all-namespaces -o=json $params }
function kgsvcallojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service --all-namespaces -o=json $params }
function kgingallojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress --all-namespaces -o=json $params }
function kgcmallojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap --all-namespaces -o=json $params }
function kgsecallojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret --all-namespaces -o=json $params }
function kgnsallojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces --all-namespaces -o=json $params }
function kgwojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch -o=json $params }
function ksysgwojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get --watch -o=json $params }
function kgpowojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch -o=json $params }
function ksysgpowojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods --watch -o=json $params }
function kgdepwojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch -o=json $params }
function ksysgdepwojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment --watch -o=json $params }
function kgsvcwojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service --watch -o=json $params }
function ksysgsvcwojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get service --watch -o=json $params }
function kgingwojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress --watch -o=json $params }
function ksysgingwojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get ingress --watch -o=json $params }
function kgcmwojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap --watch -o=json $params }
function ksysgcmwojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get configmap --watch -o=json $params }
function kgsecwojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret --watch -o=json $params }
function ksysgsecwojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get secret --watch -o=json $params }
function kgnowojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get nodes --watch -o=json $params }
function kgnswojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces --watch -o=json $params }
function kgallsl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --all-namespaces --show-labels $params }
function kgpoallsl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --all-namespaces --show-labels $params }
function kgdepallsl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --all-namespaces --show-labels $params }
function kgslall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --show-labels --all-namespaces $params }
function kgposlall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --show-labels --all-namespaces $params }
function kgdepslall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --show-labels --all-namespaces $params }
function kgallw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --all-namespaces --watch $params }
function kgpoallw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --all-namespaces --watch $params }
function kgdepallw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --all-namespaces --watch $params }
function kgsvcallw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service --all-namespaces --watch $params }
function kgingallw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress --all-namespaces --watch $params }
function kgcmallw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap --all-namespaces --watch $params }
function kgsecallw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret --all-namespaces --watch $params }
function kgnsallw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces --all-namespaces --watch $params }
function kgwall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch --all-namespaces $params }
function kgpowall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch --all-namespaces $params }
function kgdepwall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch --all-namespaces $params }
function kgsvcwall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service --watch --all-namespaces $params }
function kgingwall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress --watch --all-namespaces $params }
function kgcmwall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap --watch --all-namespaces $params }
function kgsecwall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret --watch --all-namespaces $params }
function kgnswall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces --watch --all-namespaces $params }
function kgslw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --show-labels --watch $params }
function ksysgslw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get --show-labels --watch $params }
function kgposlw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --show-labels --watch $params }
function ksysgposlw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods --show-labels --watch $params }
function kgdepslw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --show-labels --watch $params }
function ksysgdepslw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment --show-labels --watch $params }
function kgwsl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch --show-labels $params }
function ksysgwsl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get --watch --show-labels $params }
function kgpowsl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch --show-labels $params }
function ksysgpowsl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods --watch --show-labels $params }
function kgdepwsl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch --show-labels $params }
function ksysgdepwsl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment --watch --show-labels $params }
function kgallwoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --all-namespaces --watch -o=yaml $params }
function kgpoallwoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --all-namespaces --watch -o=yaml $params }
function kgdepallwoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --all-namespaces --watch -o=yaml $params }
function kgsvcallwoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service --all-namespaces --watch -o=yaml $params }
function kgingallwoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress --all-namespaces --watch -o=yaml $params }
function kgcmallwoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap --all-namespaces --watch -o=yaml $params }
function kgsecallwoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret --all-namespaces --watch -o=yaml $params }
function kgnsallwoyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces --all-namespaces --watch -o=yaml $params }
function kgwoyamlall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch -o=yaml --all-namespaces $params }
function kgpowoyamlall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch -o=yaml --all-namespaces $params }
function kgdepwoyamlall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch -o=yaml --all-namespaces $params }
function kgsvcwoyamlall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service --watch -o=yaml --all-namespaces $params }
function kgingwoyamlall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress --watch -o=yaml --all-namespaces $params }
function kgcmwoyamlall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap --watch -o=yaml --all-namespaces $params }
function kgsecwoyamlall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret --watch -o=yaml --all-namespaces $params }
function kgnswoyamlall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces --watch -o=yaml --all-namespaces $params }
function kgwalloyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch --all-namespaces -o=yaml $params }
function kgpowalloyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch --all-namespaces -o=yaml $params }
function kgdepwalloyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch --all-namespaces -o=yaml $params }
function kgsvcwalloyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service --watch --all-namespaces -o=yaml $params }
function kgingwalloyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress --watch --all-namespaces -o=yaml $params }
function kgcmwalloyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap --watch --all-namespaces -o=yaml $params }
function kgsecwalloyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret --watch --all-namespaces -o=yaml $params }
function kgnswalloyaml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces --watch --all-namespaces -o=yaml $params }
function kgowideallsl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get -o=wide --all-namespaces --show-labels $params }
function kgpoowideallsl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods -o=wide --all-namespaces --show-labels $params }
function kgdepowideallsl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment -o=wide --all-namespaces --show-labels $params }
function kgowideslall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get -o=wide --show-labels --all-namespaces $params }
function kgpoowideslall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods -o=wide --show-labels --all-namespaces $params }
function kgdepowideslall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment -o=wide --show-labels --all-namespaces $params }
function kgallowidesl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --all-namespaces -o=wide --show-labels $params }
function kgpoallowidesl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --all-namespaces -o=wide --show-labels $params }
function kgdepallowidesl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --all-namespaces -o=wide --show-labels $params }
function kgallslowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --all-namespaces --show-labels -o=wide $params }
function kgpoallslowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --all-namespaces --show-labels -o=wide $params }
function kgdepallslowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --all-namespaces --show-labels -o=wide $params }
function kgslowideall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --show-labels -o=wide --all-namespaces $params }
function kgposlowideall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --show-labels -o=wide --all-namespaces $params }
function kgdepslowideall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --show-labels -o=wide --all-namespaces $params }
function kgslallowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --show-labels --all-namespaces -o=wide $params }
function kgposlallowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --show-labels --all-namespaces -o=wide $params }
function kgdepslallowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --show-labels --all-namespaces -o=wide $params }
function kgallwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --all-namespaces --watch -o=wide $params }
function kgpoallwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --all-namespaces --watch -o=wide $params }
function kgdepallwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --all-namespaces --watch -o=wide $params }
function kgsvcallwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service --all-namespaces --watch -o=wide $params }
function kgingallwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress --all-namespaces --watch -o=wide $params }
function kgcmallwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap --all-namespaces --watch -o=wide $params }
function kgsecallwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret --all-namespaces --watch -o=wide $params }
function kgnsallwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces --all-namespaces --watch -o=wide $params }
function kgwowideall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch -o=wide --all-namespaces $params }
function kgpowowideall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch -o=wide --all-namespaces $params }
function kgdepwowideall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch -o=wide --all-namespaces $params }
function kgsvcwowideall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service --watch -o=wide --all-namespaces $params }
function kgingwowideall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress --watch -o=wide --all-namespaces $params }
function kgcmwowideall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap --watch -o=wide --all-namespaces $params }
function kgsecwowideall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret --watch -o=wide --all-namespaces $params }
function kgnswowideall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces --watch -o=wide --all-namespaces $params }
function kgwallowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch --all-namespaces -o=wide $params }
function kgpowallowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch --all-namespaces -o=wide $params }
function kgdepwallowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch --all-namespaces -o=wide $params }
function kgsvcwallowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service --watch --all-namespaces -o=wide $params }
function kgingwallowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress --watch --all-namespaces -o=wide $params }
function kgcmwallowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap --watch --all-namespaces -o=wide $params }
function kgsecwallowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret --watch --all-namespaces -o=wide $params }
function kgnswallowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces --watch --all-namespaces -o=wide $params }
function kgslwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --show-labels --watch -o=wide $params }
function ksysgslwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get --show-labels --watch -o=wide $params }
function kgposlwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --show-labels --watch -o=wide $params }
function ksysgposlwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods --show-labels --watch -o=wide $params }
function kgdepslwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --show-labels --watch -o=wide $params }
function ksysgdepslwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment --show-labels --watch -o=wide $params }
function kgwowidesl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch -o=wide --show-labels $params }
function ksysgwowidesl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get --watch -o=wide --show-labels $params }
function kgpowowidesl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch -o=wide --show-labels $params }
function ksysgpowowidesl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods --watch -o=wide --show-labels $params }
function kgdepwowidesl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch -o=wide --show-labels $params }
function ksysgdepwowidesl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment --watch -o=wide --show-labels $params }
function kgwslowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch --show-labels -o=wide $params }
function ksysgwslowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get --watch --show-labels -o=wide $params }
function kgpowslowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch --show-labels -o=wide $params }
function ksysgpowslowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods --watch --show-labels -o=wide $params }
function kgdepwslowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch --show-labels -o=wide $params }
function ksysgdepwslowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment --watch --show-labels -o=wide $params }
function kgallwojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --all-namespaces --watch -o=json $params }
function kgpoallwojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --all-namespaces --watch -o=json $params }
function kgdepallwojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --all-namespaces --watch -o=json $params }
function kgsvcallwojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service --all-namespaces --watch -o=json $params }
function kgingallwojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress --all-namespaces --watch -o=json $params }
function kgcmallwojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap --all-namespaces --watch -o=json $params }
function kgsecallwojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret --all-namespaces --watch -o=json $params }
function kgnsallwojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces --all-namespaces --watch -o=json $params }
function kgwojsonall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch -o=json --all-namespaces $params }
function kgpowojsonall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch -o=json --all-namespaces $params }
function kgdepwojsonall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch -o=json --all-namespaces $params }
function kgsvcwojsonall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service --watch -o=json --all-namespaces $params }
function kgingwojsonall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress --watch -o=json --all-namespaces $params }
function kgcmwojsonall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap --watch -o=json --all-namespaces $params }
function kgsecwojsonall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret --watch -o=json --all-namespaces $params }
function kgnswojsonall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces --watch -o=json --all-namespaces $params }
function kgwallojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch --all-namespaces -o=json $params }
function kgpowallojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch --all-namespaces -o=json $params }
function kgdepwallojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch --all-namespaces -o=json $params }
function kgsvcwallojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service --watch --all-namespaces -o=json $params }
function kgingwallojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress --watch --all-namespaces -o=json $params }
function kgcmwallojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap --watch --all-namespaces -o=json $params }
function kgsecwallojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret --watch --all-namespaces -o=json $params }
function kgnswallojson([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces --watch --all-namespaces -o=json $params }
function kgallslw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --all-namespaces --show-labels --watch $params }
function kgpoallslw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --all-namespaces --show-labels --watch $params }
function kgdepallslw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --all-namespaces --show-labels --watch $params }
function kgallwsl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --all-namespaces --watch --show-labels $params }
function kgpoallwsl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --all-namespaces --watch --show-labels $params }
function kgdepallwsl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --all-namespaces --watch --show-labels $params }
function kgslallw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --show-labels --all-namespaces --watch $params }
function kgposlallw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --show-labels --all-namespaces --watch $params }
function kgdepslallw([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --show-labels --all-namespaces --watch $params }
function kgslwall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --show-labels --watch --all-namespaces $params }
function kgposlwall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --show-labels --watch --all-namespaces $params }
function kgdepslwall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --show-labels --watch --all-namespaces $params }
function kgwallsl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch --all-namespaces --show-labels $params }
function kgpowallsl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch --all-namespaces --show-labels $params }
function kgdepwallsl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch --all-namespaces --show-labels $params }
function kgwslall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch --show-labels --all-namespaces $params }
function kgpowslall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch --show-labels --all-namespaces $params }
function kgdepwslall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch --show-labels --all-namespaces $params }
function kgallslwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --all-namespaces --show-labels --watch -o=wide $params }
function kgpoallslwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --all-namespaces --show-labels --watch -o=wide $params }
function kgdepallslwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --all-namespaces --show-labels --watch -o=wide $params }
function kgallwowidesl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --all-namespaces --watch -o=wide --show-labels $params }
function kgpoallwowidesl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --all-namespaces --watch -o=wide --show-labels $params }
function kgdepallwowidesl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --all-namespaces --watch -o=wide --show-labels $params }
function kgallwslowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --all-namespaces --watch --show-labels -o=wide $params }
function kgpoallwslowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --all-namespaces --watch --show-labels -o=wide $params }
function kgdepallwslowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --all-namespaces --watch --show-labels -o=wide $params }
function kgslallwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --show-labels --all-namespaces --watch -o=wide $params }
function kgposlallwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --show-labels --all-namespaces --watch -o=wide $params }
function kgdepslallwowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --show-labels --all-namespaces --watch -o=wide $params }
function kgslwowideall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --show-labels --watch -o=wide --all-namespaces $params }
function kgposlwowideall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --show-labels --watch -o=wide --all-namespaces $params }
function kgdepslwowideall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --show-labels --watch -o=wide --all-namespaces $params }
function kgslwallowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --show-labels --watch --all-namespaces -o=wide $params }
function kgposlwallowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --show-labels --watch --all-namespaces -o=wide $params }
function kgdepslwallowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --show-labels --watch --all-namespaces -o=wide $params }
function kgwowideallsl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch -o=wide --all-namespaces --show-labels $params }
function kgpowowideallsl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch -o=wide --all-namespaces --show-labels $params }
function kgdepwowideallsl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch -o=wide --all-namespaces --show-labels $params }
function kgwowideslall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch -o=wide --show-labels --all-namespaces $params }
function kgpowowideslall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch -o=wide --show-labels --all-namespaces $params }
function kgdepwowideslall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch -o=wide --show-labels --all-namespaces $params }
function kgwallowidesl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch --all-namespaces -o=wide --show-labels $params }
function kgpowallowidesl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch --all-namespaces -o=wide --show-labels $params }
function kgdepwallowidesl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch --all-namespaces -o=wide --show-labels $params }
function kgwallslowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch --all-namespaces --show-labels -o=wide $params }
function kgpowallslowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch --all-namespaces --show-labels -o=wide $params }
function kgdepwallslowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch --all-namespaces --show-labels -o=wide $params }
function kgwslowideall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch --show-labels -o=wide --all-namespaces $params }
function kgpowslowideall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch --show-labels -o=wide --all-namespaces $params }
function kgdepwslowideall([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch --show-labels -o=wide --all-namespaces $params }
function kgwslallowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch --show-labels --all-namespaces -o=wide $params }
function kgpowslallowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch --show-labels --all-namespaces -o=wide $params }
function kgdepwslallowide([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch --show-labels --all-namespaces -o=wide $params }
function kgf([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --recursive -f $params }
function kdf([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe --recursive -f $params }
function krmf([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete --recursive -f $params }
function kgoyamlf([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get -o=yaml --recursive -f $params }
function kgowidef([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get -o=wide --recursive -f $params }
function kgojsonf([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get -o=json --recursive -f $params }
function kgslf([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --show-labels --recursive -f $params }
function kgwf([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch --recursive -f $params }
function kgwoyamlf([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch -o=yaml --recursive -f $params }
function kgowideslf([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get -o=wide --show-labels --recursive -f $params }
function kgslowidef([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --show-labels -o=wide --recursive -f $params }
function kgwowidef([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch -o=wide --recursive -f $params }
function kgwojsonf([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch -o=json --recursive -f $params }
function kgslwf([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --show-labels --watch --recursive -f $params }
function kgwslf([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch --show-labels --recursive -f $params }
function kgslwowidef([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --show-labels --watch -o=wide --recursive -f $params }
function kgwowideslf([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch -o=wide --show-labels --recursive -f $params }
function kgwslowidef([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch --show-labels -o=wide --recursive -f $params }
function kgl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get -l $params }
function ksysgl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get -l $params }
function kdl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe -l $params }
function ksysdl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system describe -l $params }
function krml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete -l $params }
function ksysrml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system delete -l $params }
function kgpol([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods -l $params }
function ksysgpol([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods -l $params }
function kdpol([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe pods -l $params }
function ksysdpol([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system describe pods -l $params }
function krmpol([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete pods -l $params }
function ksysrmpol([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system delete pods -l $params }
function kgdepl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment -l $params }
function ksysgdepl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment -l $params }
function kddepl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe deployment -l $params }
function ksysddepl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system describe deployment -l $params }
function krmdepl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete deployment -l $params }
function ksysrmdepl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system delete deployment -l $params }
function kgsvcl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service -l $params }
function ksysgsvcl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get service -l $params }
function kdsvcl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe service -l $params }
function ksysdsvcl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system describe service -l $params }
function krmsvcl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete service -l $params }
function ksysrmsvcl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system delete service -l $params }
function kgingl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress -l $params }
function ksysgingl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get ingress -l $params }
function kdingl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe ingress -l $params }
function ksysdingl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system describe ingress -l $params }
function krmingl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete ingress -l $params }
function ksysrmingl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system delete ingress -l $params }
function kgcml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap -l $params }
function ksysgcml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get configmap -l $params }
function kdcml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe configmap -l $params }
function ksysdcml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system describe configmap -l $params }
function krmcml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete configmap -l $params }
function ksysrmcml([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system delete configmap -l $params }
function kgsecl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret -l $params }
function ksysgsecl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get secret -l $params }
function kdsecl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe secret -l $params }
function ksysdsecl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system describe secret -l $params }
function krmsecl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete secret -l $params }
function ksysrmsecl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system delete secret -l $params }
function kgnol([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get nodes -l $params }
function kdnol([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe nodes -l $params }
function kgnsl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces -l $params }
function kdnsl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe namespaces -l $params }
function krmnsl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete namespaces -l $params }
function kgoyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get -o=yaml -l $params }
function ksysgoyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get -o=yaml -l $params }
function kgpooyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods -o=yaml -l $params }
function ksysgpooyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods -o=yaml -l $params }
function kgdepoyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment -o=yaml -l $params }
function ksysgdepoyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment -o=yaml -l $params }
function kgsvcoyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service -o=yaml -l $params }
function ksysgsvcoyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get service -o=yaml -l $params }
function kgingoyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress -o=yaml -l $params }
function ksysgingoyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get ingress -o=yaml -l $params }
function kgcmoyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap -o=yaml -l $params }
function ksysgcmoyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get configmap -o=yaml -l $params }
function kgsecoyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret -o=yaml -l $params }
function ksysgsecoyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get secret -o=yaml -l $params }
function kgnooyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get nodes -o=yaml -l $params }
function kgnsoyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces -o=yaml -l $params }
function kgowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get -o=wide -l $params }
function ksysgowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get -o=wide -l $params }
function kgpoowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods -o=wide -l $params }
function ksysgpoowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods -o=wide -l $params }
function kgdepowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment -o=wide -l $params }
function ksysgdepowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment -o=wide -l $params }
function kgsvcowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service -o=wide -l $params }
function ksysgsvcowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get service -o=wide -l $params }
function kgingowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress -o=wide -l $params }
function ksysgingowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get ingress -o=wide -l $params }
function kgcmowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap -o=wide -l $params }
function ksysgcmowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get configmap -o=wide -l $params }
function kgsecowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret -o=wide -l $params }
function ksysgsecowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get secret -o=wide -l $params }
function kgnoowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get nodes -o=wide -l $params }
function kgnsowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces -o=wide -l $params }
function kgojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get -o=json -l $params }
function ksysgojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get -o=json -l $params }
function kgpoojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods -o=json -l $params }
function ksysgpoojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods -o=json -l $params }
function kgdepojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment -o=json -l $params }
function ksysgdepojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment -o=json -l $params }
function kgsvcojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service -o=json -l $params }
function ksysgsvcojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get service -o=json -l $params }
function kgingojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress -o=json -l $params }
function ksysgingojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get ingress -o=json -l $params }
function kgcmojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap -o=json -l $params }
function ksysgcmojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get configmap -o=json -l $params }
function kgsecojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret -o=json -l $params }
function ksysgsecojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get secret -o=json -l $params }
function kgnoojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get nodes -o=json -l $params }
function kgnsojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces -o=json -l $params }
function kgsll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --show-labels -l $params }
function ksysgsll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get --show-labels -l $params }
function kgposll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --show-labels -l $params }
function ksysgposll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods --show-labels -l $params }
function kgdepsll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --show-labels -l $params }
function ksysgdepsll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment --show-labels -l $params }
function kgwl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch -l $params }
function ksysgwl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get --watch -l $params }
function kgpowl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch -l $params }
function ksysgpowl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods --watch -l $params }
function kgdepwl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch -l $params }
function ksysgdepwl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment --watch -l $params }
function kgsvcwl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service --watch -l $params }
function ksysgsvcwl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get service --watch -l $params }
function kgingwl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress --watch -l $params }
function ksysgingwl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get ingress --watch -l $params }
function kgcmwl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap --watch -l $params }
function ksysgcmwl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get configmap --watch -l $params }
function kgsecwl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret --watch -l $params }
function ksysgsecwl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get secret --watch -l $params }
function kgnowl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get nodes --watch -l $params }
function kgnswl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces --watch -l $params }
function kgwoyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch -o=yaml -l $params }
function ksysgwoyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get --watch -o=yaml -l $params }
function kgpowoyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch -o=yaml -l $params }
function ksysgpowoyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods --watch -o=yaml -l $params }
function kgdepwoyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch -o=yaml -l $params }
function ksysgdepwoyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment --watch -o=yaml -l $params }
function kgsvcwoyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service --watch -o=yaml -l $params }
function ksysgsvcwoyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get service --watch -o=yaml -l $params }
function kgingwoyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress --watch -o=yaml -l $params }
function ksysgingwoyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get ingress --watch -o=yaml -l $params }
function kgcmwoyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap --watch -o=yaml -l $params }
function ksysgcmwoyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get configmap --watch -o=yaml -l $params }
function kgsecwoyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret --watch -o=yaml -l $params }
function ksysgsecwoyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get secret --watch -o=yaml -l $params }
function kgnowoyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get nodes --watch -o=yaml -l $params }
function kgnswoyamll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces --watch -o=yaml -l $params }
function kgowidesll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get -o=wide --show-labels -l $params }
function ksysgowidesll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get -o=wide --show-labels -l $params }
function kgpoowidesll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods -o=wide --show-labels -l $params }
function ksysgpoowidesll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods -o=wide --show-labels -l $params }
function kgdepowidesll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment -o=wide --show-labels -l $params }
function ksysgdepowidesll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment -o=wide --show-labels -l $params }
function kgslowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --show-labels -o=wide -l $params }
function ksysgslowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get --show-labels -o=wide -l $params }
function kgposlowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --show-labels -o=wide -l $params }
function ksysgposlowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods --show-labels -o=wide -l $params }
function kgdepslowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --show-labels -o=wide -l $params }
function ksysgdepslowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment --show-labels -o=wide -l $params }
function kgwowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch -o=wide -l $params }
function ksysgwowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get --watch -o=wide -l $params }
function kgpowowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch -o=wide -l $params }
function ksysgpowowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods --watch -o=wide -l $params }
function kgdepwowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch -o=wide -l $params }
function ksysgdepwowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment --watch -o=wide -l $params }
function kgsvcwowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service --watch -o=wide -l $params }
function ksysgsvcwowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get service --watch -o=wide -l $params }
function kgingwowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress --watch -o=wide -l $params }
function ksysgingwowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get ingress --watch -o=wide -l $params }
function kgcmwowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap --watch -o=wide -l $params }
function ksysgcmwowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get configmap --watch -o=wide -l $params }
function kgsecwowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret --watch -o=wide -l $params }
function ksysgsecwowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get secret --watch -o=wide -l $params }
function kgnowowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get nodes --watch -o=wide -l $params }
function kgnswowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces --watch -o=wide -l $params }
function kgwojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch -o=json -l $params }
function ksysgwojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get --watch -o=json -l $params }
function kgpowojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch -o=json -l $params }
function ksysgpowojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods --watch -o=json -l $params }
function kgdepwojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch -o=json -l $params }
function ksysgdepwojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment --watch -o=json -l $params }
function kgsvcwojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service --watch -o=json -l $params }
function ksysgsvcwojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get service --watch -o=json -l $params }
function kgingwojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress --watch -o=json -l $params }
function ksysgingwojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get ingress --watch -o=json -l $params }
function kgcmwojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap --watch -o=json -l $params }
function ksysgcmwojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get configmap --watch -o=json -l $params }
function kgsecwojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret --watch -o=json -l $params }
function ksysgsecwojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get secret --watch -o=json -l $params }
function kgnowojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get nodes --watch -o=json -l $params }
function kgnswojsonl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get namespaces --watch -o=json -l $params }
function kgslwl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --show-labels --watch -l $params }
function ksysgslwl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get --show-labels --watch -l $params }
function kgposlwl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --show-labels --watch -l $params }
function ksysgposlwl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods --show-labels --watch -l $params }
function kgdepslwl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --show-labels --watch -l $params }
function ksysgdepslwl([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment --show-labels --watch -l $params }
function kgwsll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch --show-labels -l $params }
function ksysgwsll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get --watch --show-labels -l $params }
function kgpowsll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch --show-labels -l $params }
function ksysgpowsll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods --watch --show-labels -l $params }
function kgdepwsll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch --show-labels -l $params }
function ksysgdepwsll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment --watch --show-labels -l $params }
function kgslwowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --show-labels --watch -o=wide -l $params }
function ksysgslwowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get --show-labels --watch -o=wide -l $params }
function kgposlwowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --show-labels --watch -o=wide -l $params }
function ksysgposlwowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods --show-labels --watch -o=wide -l $params }
function kgdepslwowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --show-labels --watch -o=wide -l $params }
function ksysgdepslwowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment --show-labels --watch -o=wide -l $params }
function kgwowidesll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch -o=wide --show-labels -l $params }
function ksysgwowidesll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get --watch -o=wide --show-labels -l $params }
function kgpowowidesll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch -o=wide --show-labels -l $params }
function ksysgpowowidesll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods --watch -o=wide --show-labels -l $params }
function kgdepwowidesll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch -o=wide --show-labels -l $params }
function ksysgdepwowidesll([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment --watch -o=wide --show-labels -l $params }
function kgwslowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch --show-labels -o=wide -l $params }
function ksysgwslowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get --watch --show-labels -o=wide -l $params }
function kgpowslowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch --show-labels -o=wide -l $params }
function ksysgpowslowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get pods --watch --show-labels -o=wide -l $params }
function kgdepwslowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch --show-labels -o=wide -l $params }
function ksysgdepwslowidel([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system get deployment --watch --show-labels -o=wide -l $params }
function kexn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl exec -i -t --namespace $params }
function klon([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl logs -f --namespace $params }
function kgn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --namespace $params }
function kdn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe --namespace $params }
function krmn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete --namespace $params }
function kgpon([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --namespace $params }
function kdpon([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe pods --namespace $params }
function krmpon([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete pods --namespace $params }
function kgdepn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --namespace $params }
function kddepn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe deployment --namespace $params }
function krmdepn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete deployment --namespace $params }
function kgsvcn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service --namespace $params }
function kdsvcn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe service --namespace $params }
function krmsvcn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete service --namespace $params }
function kgingn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress --namespace $params }
function kdingn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe ingress --namespace $params }
function krmingn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete ingress --namespace $params }
function kgcmn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap --namespace $params }
function kdcmn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe configmap --namespace $params }
function krmcmn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete configmap --namespace $params }
function kgsecn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret --namespace $params }
function kdsecn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl describe secret --namespace $params }
function krmsecn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl delete secret --namespace $params }
function kgoyamln([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get -o=yaml --namespace $params }
function kgpooyamln([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods -o=yaml --namespace $params }
function kgdepoyamln([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment -o=yaml --namespace $params }
function kgsvcoyamln([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service -o=yaml --namespace $params }
function kgingoyamln([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress -o=yaml --namespace $params }
function kgcmoyamln([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap -o=yaml --namespace $params }
function kgsecoyamln([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret -o=yaml --namespace $params }
function kgowiden([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get -o=wide --namespace $params }
function kgpoowiden([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods -o=wide --namespace $params }
function kgdepowiden([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment -o=wide --namespace $params }
function kgsvcowiden([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service -o=wide --namespace $params }
function kgingowiden([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress -o=wide --namespace $params }
function kgcmowiden([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap -o=wide --namespace $params }
function kgsecowiden([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret -o=wide --namespace $params }
function kgojsonn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get -o=json --namespace $params }
function kgpoojsonn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods -o=json --namespace $params }
function kgdepojsonn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment -o=json --namespace $params }
function kgsvcojsonn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service -o=json --namespace $params }
function kgingojsonn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress -o=json --namespace $params }
function kgcmojsonn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap -o=json --namespace $params }
function kgsecojsonn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret -o=json --namespace $params }
function kgsln([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --show-labels --namespace $params }
function kgposln([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --show-labels --namespace $params }
function kgdepsln([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --show-labels --namespace $params }
function kgwn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch --namespace $params }
function kgpown([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch --namespace $params }
function kgdepwn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch --namespace $params }
function kgsvcwn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service --watch --namespace $params }
function kgingwn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress --watch --namespace $params }
function kgcmwn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap --watch --namespace $params }
function kgsecwn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret --watch --namespace $params }
function kgwoyamln([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch -o=yaml --namespace $params }
function kgpowoyamln([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch -o=yaml --namespace $params }
function kgdepwoyamln([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch -o=yaml --namespace $params }
function kgsvcwoyamln([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service --watch -o=yaml --namespace $params }
function kgingwoyamln([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress --watch -o=yaml --namespace $params }
function kgcmwoyamln([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap --watch -o=yaml --namespace $params }
function kgsecwoyamln([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret --watch -o=yaml --namespace $params }
function kgowidesln([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get -o=wide --show-labels --namespace $params }
function kgpoowidesln([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods -o=wide --show-labels --namespace $params }
function kgdepowidesln([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment -o=wide --show-labels --namespace $params }
function kgslowiden([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --show-labels -o=wide --namespace $params }
function kgposlowiden([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --show-labels -o=wide --namespace $params }
function kgdepslowiden([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --show-labels -o=wide --namespace $params }
function kgwowiden([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch -o=wide --namespace $params }
function kgpowowiden([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch -o=wide --namespace $params }
function kgdepwowiden([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch -o=wide --namespace $params }
function kgsvcwowiden([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service --watch -o=wide --namespace $params }
function kgingwowiden([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress --watch -o=wide --namespace $params }
function kgcmwowiden([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap --watch -o=wide --namespace $params }
function kgsecwowiden([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret --watch -o=wide --namespace $params }
function kgwojsonn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch -o=json --namespace $params }
function kgpowojsonn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch -o=json --namespace $params }
function kgdepwojsonn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch -o=json --namespace $params }
function kgsvcwojsonn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get service --watch -o=json --namespace $params }
function kgingwojsonn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get ingress --watch -o=json --namespace $params }
function kgcmwojsonn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get configmap --watch -o=json --namespace $params }
function kgsecwojsonn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get secret --watch -o=json --namespace $params }
function kgslwn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --show-labels --watch --namespace $params }
function kgposlwn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --show-labels --watch --namespace $params }
function kgdepslwn([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --show-labels --watch --namespace $params }
function kgwsln([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch --show-labels --namespace $params }
function kgpowsln([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch --show-labels --namespace $params }
function kgdepwsln([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch --show-labels --namespace $params }
function kgslwowiden([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --show-labels --watch -o=wide --namespace $params }
function kgposlwowiden([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --show-labels --watch -o=wide --namespace $params }
function kgdepslwowiden([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --show-labels --watch -o=wide --namespace $params }
function kgwowidesln([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch -o=wide --show-labels --namespace $params }
function kgpowowidesln([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch -o=wide --show-labels --namespace $params }
function kgdepwowidesln([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch -o=wide --show-labels --namespace $params }
function kgwslowiden([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get --watch --show-labels -o=wide --namespace $params }
function kgpowslowiden([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get pods --watch --show-labels -o=wide --namespace $params }
function kgdepwslowiden([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployment --watch --show-labels -o=wide --namespace $params }
