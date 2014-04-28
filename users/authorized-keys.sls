{% for id, key_object in pillar.get('authorized-keys', {}).items() %}

ssh_auth_key{{ id }}:
  ssh_auth.present:
    - user: {{ key_object.user }}
    - source: {{ key_object.key_path }}

{% endfor %}
