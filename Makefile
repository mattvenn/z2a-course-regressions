.PHONY: all

all:
	@echo "===> project 1.1"
	$(MAKE) -C magic-mosfet check

	@echo "===> project 1.2"
	$(MAKE) -C simulate-gate check

	@echo "===> project 2.1"
	$(MAKE) -C rgb_mixer test_pwm test_debounce test_encoder test_rgb_mixer

	@echo "===> project 2.2"
	$(MAKE) -C frequency_counter test_frequency_counter test_frequency_counter_with_period test_seven_segment test_edge_detect

	@echo "===> project 3.1"
	cd formal_timer && \
		sby -f timer.sby

	@echo "===> project 3.2"
	$(MAKE) -C tt-multiplexer formal_connectivity

	@echo "===> project 4.1"
	$(MAKE) -C rgb_mixer_openlane/rgb_mixer gds
