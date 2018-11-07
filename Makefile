TARGET = xz-java
PREFIX = /usr/local

$(TARGET): $(TARGET).in
	sed 's,@PREFIX@,$(PREFIX),g' $(TARGET).in > $(TARGET)
	chmod a+x $(TARGET)

clean:
	rm -f $(TARGET)
