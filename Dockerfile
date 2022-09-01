FROM ansao/saonode:agent_v1

ARG agent_name
ARG bldvm_ip

WORKDIR "/opflex/agent-ovs"
COPY ./script.sh /
RUN chmod +x /script.sh
ENTRYPOINT ["/script.sh"]

