TARGET  = profanation/profanation.dge

CHAINPREFIX := /opt/mipsel-RetroFW-linux-uclibc
CROSS_COMPILE := $(CHAINPREFIX)/usr/bin/mipsel-linux-

CC 		:= $(CROSS_COMPILE)gcc
CXX 	:= $(CROSS_COMPILE)g++
STRIP 	:= $(CROSS_COMPILE)strip

SYSROOT		:= $(shell $(CC) --print-sysroot)
SDL_LIBS    := $(shell $(SYSROOT)/usr/bin/sdl-config --libs)
SDL_CFLAGS  := $(shell $(SYSROOT)/usr/bin/sdl-config --cflags)

LDFLAGS = 
OBJ  = src/tesc_seleccion_idioma.o src/profanation.o src/TSprVerticalFlip.o src/TSprFlecha.o src/TSprGota.o src/TSprHorizontal.o src/TSprHorizontalConFlip.o src/TSprJohny.o src/TSprPelotaBota.o src/TSprRoca.o src/TSprSeleccion.o src/TSprTesoro.o src/TSprVertical.o src/ma_core.o src/tmabitmap.o src/tmafont.o src/tmagame.o src/tmaimagebank.o src/tmaogg.o src/tmasound.o src/tmasprite.o src/tmafilereader.o src/tmamessage.o src/tmarandom.o src/tmarectangle.o src/tmastring.o src/tmavector.o src/mapas.o src/tesc_juego.o src/TSpriteEnemigo.o src/tmainputcontroller.o
LIBS = -lSDL -lSDL_image -lSDL_gfx -lSDL_mixer
CXXFLAGS = -O2 -Wall -DLINUX -DSMALL_GAME
CFLAGS = -O2 -Wall -DLINUX -DSMALL_GAME
RM = rm -f

.PHONY: all all-before all-after clean clean-custom

all: all-before $(TARGET) all-after

clean: clean-custom
	${RM} $(OBJ) $(TARGET)

$(TARGET): $(OBJ)
	$(CXX) $(LDFLAGS) $(OBJ) -o $(TARGET) $(LIBS)

src/tesc_seleccion_idioma.o: $(GLOBALDEPS) src/escenas/tesc_seleccion_idioma.cpp src/escenas/escenarios.h src/main/profanation.h src/ma-sdl/ma_classes.h src/ma-sdl/ma_object.h src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h src/ma-sdl/maps/mapas.h src/ma-sdl/ma_classes.h src/ma-sdl/utils/utils.h src/sprites/sprites.h src/ma-sdl/ma_classes.h src/ma-sdl/maps/mapas.h
	$(CXX) -c src/escenas/tesc_seleccion_idioma.cpp -o src/tesc_seleccion_idioma.o $(CXXFLAGS)

src/profanation.o: $(GLOBALDEPS) src/main/profanation.cpp src/main/profanation.h src/ma-sdl/ma_classes.h src/ma-sdl/ma_object.h src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h src/ma-sdl/maps/mapas.h src/ma-sdl/ma_classes.h src/ma-sdl/utils/utils.h src/escenas/escenarios.h src/main/profanation.h src/sprites/sprites.h src/ma-sdl/ma_classes.h src/ma-sdl/maps/mapas.h
	$(CXX) -c src/main/profanation.cpp -o src/profanation.o $(CXXFLAGS)

src/TSprVerticalFlip.o: $(GLOBALDEPS) src/sprites/TSprVerticalFlip.cpp src/sprites/sprites.h src/ma-sdl/ma_classes.h src/ma-sdl/ma_object.h src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h src/ma-sdl/maps/mapas.h src/ma-sdl/ma_classes.h src/ma-sdl/utils/utils.h src/escenas/escenarios.h src/main/profanation.h src/ma-sdl/ma_classes.h src/ma-sdl/maps/mapas.h src/sprites/sprites.h
	$(CXX) -c src/sprites/TSprVerticalFlip.cpp -o src/TSprVerticalFlip.o $(CXXFLAGS)

src/TSprFlecha.o: $(GLOBALDEPS) src/sprites/TSprFlecha.cpp src/sprites/sprites.h src/ma-sdl/ma_classes.h src/ma-sdl/ma_object.h src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h src/ma-sdl/maps/mapas.h src/ma-sdl/ma_classes.h src/ma-sdl/utils/utils.h src/escenas/escenarios.h src/main/profanation.h src/ma-sdl/ma_classes.h src/ma-sdl/maps/mapas.h src/sprites/sprites.h
	$(CXX) -c src/sprites/TSprFlecha.cpp -o src/TSprFlecha.o $(CXXFLAGS)

src/TSprGota.o: $(GLOBALDEPS) src/sprites/TSprGota.cpp src/sprites/sprites.h src/ma-sdl/ma_classes.h src/ma-sdl/ma_object.h src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h src/ma-sdl/maps/mapas.h src/ma-sdl/ma_classes.h src/ma-sdl/utils/utils.h src/escenas/escenarios.h src/main/profanation.h src/ma-sdl/ma_classes.h src/ma-sdl/maps/mapas.h src/sprites/sprites.h
	$(CXX) -c src/sprites/TSprGota.cpp -o src/TSprGota.o $(CXXFLAGS)

src/TSprHorizontal.o: $(GLOBALDEPS) src/sprites/TSprHorizontal.cpp src/sprites/sprites.h src/ma-sdl/ma_classes.h src/ma-sdl/ma_object.h src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h src/ma-sdl/maps/mapas.h src/ma-sdl/ma_classes.h src/ma-sdl/utils/utils.h src/escenas/escenarios.h src/main/profanation.h src/ma-sdl/ma_classes.h src/ma-sdl/maps/mapas.h src/sprites/sprites.h
	$(CXX) -c src/sprites/TSprHorizontal.cpp -o src/TSprHorizontal.o $(CXXFLAGS)

src/TSprHorizontalConFlip.o: $(GLOBALDEPS) src/sprites/TSprHorizontalConFlip.cpp src/sprites/sprites.h src/ma-sdl/ma_classes.h src/ma-sdl/ma_object.h src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h src/ma-sdl/maps/mapas.h src/ma-sdl/ma_classes.h src/ma-sdl/utils/utils.h src/escenas/escenarios.h src/main/profanation.h src/ma-sdl/ma_classes.h src/ma-sdl/maps/mapas.h src/sprites/sprites.h
	$(CXX) -c src/sprites/TSprHorizontalConFlip.cpp -o src/TSprHorizontalConFlip.o $(CXXFLAGS)

src/TSprJohny.o: $(GLOBALDEPS) src/sprites/TSprJohny.cpp src/sprites/sprites.h src/ma-sdl/ma_classes.h src/ma-sdl/ma_object.h src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h src/ma-sdl/maps/mapas.h src/ma-sdl/ma_classes.h src/ma-sdl/utils/utils.h src/escenas/escenarios.h src/main/profanation.h src/ma-sdl/ma_classes.h src/ma-sdl/maps/mapas.h src/sprites/sprites.h
	$(CXX) -c src/sprites/TSprJohny.cpp -o src/TSprJohny.o $(CXXFLAGS)

src/TSprPelotaBota.o: $(GLOBALDEPS) src/sprites/TSprPelotaBota.cpp src/sprites/sprites.h src/ma-sdl/ma_classes.h src/ma-sdl/ma_object.h src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h src/ma-sdl/maps/mapas.h src/ma-sdl/ma_classes.h src/ma-sdl/utils/utils.h src/escenas/escenarios.h src/main/profanation.h src/ma-sdl/ma_classes.h src/ma-sdl/maps/mapas.h src/sprites/sprites.h
	$(CXX) -c src/sprites/TSprPelotaBota.cpp -o src/TSprPelotaBota.o $(CXXFLAGS)

src/TSprRoca.o: $(GLOBALDEPS) src/sprites/TSprRoca.cpp src/sprites/sprites.h src/ma-sdl/ma_classes.h src/ma-sdl/ma_object.h src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h src/ma-sdl/maps/mapas.h src/ma-sdl/ma_classes.h src/ma-sdl/utils/utils.h src/escenas/escenarios.h src/main/profanation.h src/ma-sdl/ma_classes.h src/ma-sdl/maps/mapas.h src/sprites/sprites.h
	$(CXX) -c src/sprites/TSprRoca.cpp -o src/TSprRoca.o $(CXXFLAGS)

src/TSprSeleccion.o: $(GLOBALDEPS) src/sprites/TSprSeleccion.cpp src/sprites/sprites.h src/ma-sdl/ma_classes.h src/ma-sdl/ma_object.h src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h src/ma-sdl/maps/mapas.h src/ma-sdl/ma_classes.h src/ma-sdl/utils/utils.h src/escenas/escenarios.h src/main/profanation.h src/ma-sdl/ma_classes.h src/ma-sdl/maps/mapas.h src/sprites/sprites.h
	$(CXX) -c src/sprites/TSprSeleccion.cpp -o src/TSprSeleccion.o $(CXXFLAGS)

src/TSprTesoro.o: $(GLOBALDEPS) src/sprites/TSprTesoro.cpp src/sprites/sprites.h src/ma-sdl/ma_classes.h src/ma-sdl/ma_object.h src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h src/ma-sdl/maps/mapas.h src/ma-sdl/ma_classes.h src/ma-sdl/utils/utils.h src/escenas/escenarios.h src/main/profanation.h src/ma-sdl/ma_classes.h src/ma-sdl/maps/mapas.h src/sprites/sprites.h
	$(CXX) -c src/sprites/TSprTesoro.cpp -o src/TSprTesoro.o $(CXXFLAGS)

src/TSprVertical.o: $(GLOBALDEPS) src/sprites/TSprVertical.cpp src/sprites/sprites.h src/ma-sdl/ma_classes.h src/ma-sdl/ma_object.h src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h src/ma-sdl/maps/mapas.h src/ma-sdl/ma_classes.h src/ma-sdl/utils/utils.h src/escenas/escenarios.h src/main/profanation.h src/ma-sdl/ma_classes.h src/ma-sdl/maps/mapas.h src/sprites/sprites.h
	$(CXX) -c src/sprites/TSprVertical.cpp -o src/TSprVertical.o $(CXXFLAGS)

src/ma_core.o: $(GLOBALDEPS) src/ma-sdl/ma_core.cpp src/ma-sdl/ma_classes.h src/ma-sdl/ma_object.h src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h
	$(CXX) -c src/ma-sdl/ma_core.cpp -o src/ma_core.o $(CXXFLAGS)

src/tmabitmap.o: $(GLOBALDEPS) src/ma-sdl/tmabitmap.cpp src/ma-sdl/ma_classes.h src/ma-sdl/ma_object.h src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h
	$(CXX) -c src/ma-sdl/tmabitmap.cpp -o src/tmabitmap.o $(CXXFLAGS)

src/tmafont.o: $(GLOBALDEPS) src/ma-sdl/tmafont.cpp src/ma-sdl/ma_classes.h src/ma-sdl/ma_object.h src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h
	$(CXX) -c src/ma-sdl/tmafont.cpp -o src/tmafont.o $(CXXFLAGS)

src/tmagame.o: $(GLOBALDEPS) src/ma-sdl/tmagame.cpp src/ma-sdl/ma_classes.h src/ma-sdl/ma_object.h src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h
	$(CXX) -c src/ma-sdl/tmagame.cpp -o src/tmagame.o $(CXXFLAGS)

src/tmaimagebank.o: $(GLOBALDEPS) src/ma-sdl/tmaimagebank.cpp src/ma-sdl/ma_classes.h src/ma-sdl/ma_object.h src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h src/ma-sdl/utils/utils.h
	$(CXX) -c src/ma-sdl/tmaimagebank.cpp -o src/tmaimagebank.o $(CXXFLAGS)

src/tmaogg.o: $(GLOBALDEPS) src/ma-sdl/tmaogg.cpp src/ma-sdl/ma_classes.h src/ma-sdl/ma_object.h src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h
	$(CXX) -c src/ma-sdl/tmaogg.cpp -o src/tmaogg.o $(CXXFLAGS)

src/tmasound.o: $(GLOBALDEPS) src/ma-sdl/tmasound.cpp src/ma-sdl/ma_classes.h src/ma-sdl/ma_object.h src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h
	$(CXX) -c src/ma-sdl/tmasound.cpp -o src/tmasound.o $(CXXFLAGS)

src/tmasprite.o: $(GLOBALDEPS) src/ma-sdl/tmasprite.cpp src/ma-sdl/ma_classes.h src/ma-sdl/ma_object.h src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h
	$(CXX) -c src/ma-sdl/tmasprite.cpp -o src/tmasprite.o $(CXXFLAGS)

src/tmafilereader.o: $(GLOBALDEPS) src/ma-sdl/utils/tmafilereader.cpp src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h
	$(CXX) -c src/ma-sdl/utils/tmafilereader.cpp -o src/tmafilereader.o $(CXXFLAGS)

src/tmamessage.o: $(GLOBALDEPS) src/ma-sdl/utils/tmamessage.cpp src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h
	$(CXX) -c src/ma-sdl/utils/tmamessage.cpp -o src/tmamessage.o $(CXXFLAGS)

src/tmarandom.o: $(GLOBALDEPS) src/ma-sdl/utils/tmarandom.cpp src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h
	$(CXX) -c src/ma-sdl/utils/tmarandom.cpp -o src/tmarandom.o $(CXXFLAGS)

src/tmarectangle.o: $(GLOBALDEPS) src/ma-sdl/utils/tmarectangle.cpp src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h src/ma-sdl/ma_classes.h src/ma-sdl/ma_object.h src/ma-sdl/utils/utils.h
	$(CXX) -c src/ma-sdl/utils/tmarectangle.cpp -o src/tmarectangle.o $(CXXFLAGS)

src/tmastring.o: $(GLOBALDEPS) src/ma-sdl/utils/tmastring.cpp src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h
	$(CXX) -c src/ma-sdl/utils/tmastring.cpp -o src/tmastring.o $(CXXFLAGS)

src/tmavector.o: $(GLOBALDEPS) src/ma-sdl/utils/tmavector.cpp src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h
	$(CXX) -c src/ma-sdl/utils/tmavector.cpp -o src/tmavector.o $(CXXFLAGS)

src/mapas.o: $(GLOBALDEPS) src/ma-sdl/maps/mapas.cpp src/ma-sdl/maps/mapas.h src/ma-sdl/ma_classes.h src/ma-sdl/ma_object.h src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h src/ma-sdl/utils/utils.h
	$(CXX) -c src/ma-sdl/maps/mapas.cpp -o src/mapas.o $(CXXFLAGS)

src/tesc_juego.o: $(GLOBALDEPS) src/escenas/tesc_juego.cpp src/escenas/escenarios.h src/main/profanation.h src/ma-sdl/ma_classes.h src/ma-sdl/ma_object.h src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h src/ma-sdl/maps/mapas.h src/ma-sdl/ma_classes.h src/ma-sdl/utils/utils.h src/sprites/sprites.h src/ma-sdl/ma_classes.h src/ma-sdl/maps/mapas.h src/escenas/idioma.h src/escenas/enemigos.h
	$(CXX) -c src/escenas/tesc_juego.cpp -o src/tesc_juego.o $(CXXFLAGS)

src/TSpriteEnemigo.o: $(GLOBALDEPS) src/sprites/TSpriteEnemigo.cpp src/sprites/sprites.h src/ma-sdl/ma_classes.h src/ma-sdl/ma_object.h src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h src/ma-sdl/maps/mapas.h src/ma-sdl/ma_classes.h src/ma-sdl/utils/utils.h src/escenas/escenarios.h src/main/profanation.h src/ma-sdl/ma_classes.h src/ma-sdl/maps/mapas.h src/sprites/sprites.h
	$(CXX) -c src/sprites/TSpriteEnemigo.cpp -o src/TSpriteEnemigo.o $(CXXFLAGS)

src/tmainputcontroller.o: $(GLOBALDEPS) src/ma-sdl/tmainputcontroller.cpp src/ma-sdl/ma_classes.h src/ma-sdl/ma_object.h src/ma-sdl/utils/utils.h src/ma-sdl/ma_object.h
	$(CXX) -c src/ma-sdl/tmainputcontroller.cpp -o src/tmainputcontroller.o $(CXXFLAGS)

ipk: all
	@rm -rf /tmp/.profanation-ipk/ && mkdir -p /tmp/.profanation-ipk/root/home/retrofw/games/profanation /tmp/.profanation-ipk/root/home/retrofw/apps/gmenu2x/sections/games
	@cp -r profanation/profanation.png profanation/profanation.dge profanation/profanation.man.txt profanation/Data /tmp/.profanation-ipk/root/home/retrofw/games/profanation
	@cp profanation/profanation.lnk /tmp/.profanation-ipk/root/home/retrofw/apps/gmenu2x/sections/games
	@sed "s/^Version:.*/Version: $$(date +%Y%m%d)/" profanation/control > /tmp/.profanation-ipk/control
	@cp profanation/conffiles /tmp/.profanation-ipk/
	@tar --owner=0 --group=0 -czvf /tmp/.profanation-ipk/control.tar.gz -C /tmp/.profanation-ipk/ control conffiles
	@tar --owner=0 --group=0 -czvf /tmp/.profanation-ipk/data.tar.gz -C /tmp/.profanation-ipk/root/ .
	@echo 2.0 > /tmp/.profanation-ipk/debian-binary
	@ar r profanation/profanation.ipk /tmp/.profanation-ipk/control.tar.gz /tmp/.profanation-ipk/data.tar.gz /tmp/.profanation-ipk/debian-binary

opk: all
	@mksquashfs \
	profanation/default.retrofw.desktop \
	profanation/profanation.png \
	profanation/profanation.dge \
	profanation/profanation.man.txt \
	profanation/Data \
	profanation/profanation.opk \
	-all-root -noappend -no-exports -no-xattrs
