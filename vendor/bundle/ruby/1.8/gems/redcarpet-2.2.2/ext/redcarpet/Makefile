
SHELL = /bin/sh

#### Start of system configuration section. ####

srcdir = .
topdir = /Users/paulsutcliffe/.rvm/rubies/ruby-1.8.7-p371/lib/ruby/1.8/i686-darwin10.8.0
hdrdir = $(topdir)
VPATH = $(srcdir):$(topdir):$(hdrdir)
prefix = $(DESTDIR)/Users/paulsutcliffe/.rvm/rubies/ruby-1.8.7-p371
exec_prefix = $(prefix)
sitedir = $(libdir)/ruby/site_ruby
libdir = $(exec_prefix)/lib
docdir = $(datarootdir)/doc/$(PACKAGE)
oldincludedir = $(DESTDIR)/usr/include
mandir = $(datarootdir)/man
localstatedir = $(prefix)/var
sbindir = $(exec_prefix)/sbin
archdir = $(rubylibdir)/$(arch)
libexecdir = $(exec_prefix)/libexec
sitelibdir = $(sitedir)/$(ruby_version)
datadir = $(datarootdir)
vendorlibdir = $(vendordir)/$(ruby_version)
psdir = $(docdir)
sitearchdir = $(sitelibdir)/$(sitearch)
includedir = $(prefix)/include
rubylibdir = $(libdir)/ruby/$(ruby_version)
htmldir = $(docdir)
bindir = $(exec_prefix)/bin
localedir = $(datarootdir)/locale
dvidir = $(docdir)
vendordir = $(libdir)/ruby/vendor_ruby
datarootdir = $(prefix)/share
pdfdir = $(docdir)
sharedstatedir = $(prefix)/com
sysconfdir = $(prefix)/etc
vendorarchdir = $(vendorlibdir)/$(sitearch)
infodir = $(datarootdir)/info

CC = gcc-4.2
LIBRUBY = $(LIBRUBY_SO)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -l$(RUBY_SO_NAME)
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static

RUBY_EXTCONF_H = 
CFLAGS   =  -fno-common -O3 -I/opt/local/include  -fno-common -pipe -fno-common $(cflags) 
INCFLAGS = -I. -I$(topdir) -I$(hdrdir) -I$(srcdir)
DEFS     = 
CPPFLAGS =   -D_XOPEN_SOURCE -D_DARWIN_C_SOURCE $(DEFS) $(cppflags)
CXXFLAGS = $(CFLAGS) 
ldflags  = -L. -L/opt/local/lib
dldflags = 
archflag = 
DLDFLAGS = $(ldflags) $(dldflags) $(archflag)
LDSHARED = cc -dynamic -bundle -undefined suppress -flat_namespace
AR = ar
EXEEXT = 

RUBY_INSTALL_NAME = ruby
RUBY_SO_NAME = ruby
arch = i686-darwin10.8.0
sitearch = i686-darwin10.8.0
ruby_version = 1.8
ruby = /Users/paulsutcliffe/.rvm/rubies/ruby-1.8.7-p371/bin/ruby
RUBY = $(ruby)
RM = rm -f
MAKEDIRS = mkdir -p
INSTALL = /usr/bin/install -c
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 644
COPY = cp

#### End of system configuration section. ####

preload = 

libpath = . $(libdir)
LIBPATH =  -L. -L$(libdir)
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = 

extout = 
extout_prefix = 
target_prefix = 
LOCAL_LIBS = 
LIBS = $(LIBRUBYARG_SHARED)  -ldl -lobjc  
SRCS = autolink.c buffer.c houdini_href_e.c houdini_html_e.c html.c html_smartypants.c markdown.c rc_markdown.c rc_render.c stack.c
OBJS = autolink.o buffer.o houdini_href_e.o houdini_html_e.o html.o html_smartypants.o markdown.o rc_markdown.o rc_render.o stack.o
TARGET = redcarpet
DLLIB = $(TARGET).bundle
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR = /users/paulsutcliffe/rails-apps/renato/vendor/bundle/ruby/1.8/gems/redcarpet-2.2.2/lib$(target_prefix)
RUBYARCHDIR = /users/paulsutcliffe/rails-apps/renato/vendor/bundle/ruby/1.8/gems/redcarpet-2.2.2/lib$(target_prefix)

TARGET_SO     = $(DLLIB)
CLEANLIBS     = $(TARGET).bundle $(TARGET).il? $(TARGET).tds $(TARGET).map
CLEANOBJS     = *.o *.a *.s[ol] *.pdb *.exp *.bak

all:		$(DLLIB)
static:		$(STATIC_LIB)

clean:
		@-$(RM) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES)

distclean:	clean
		@-$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		@-$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)

realclean:	distclean
install: install-so install-rb

install-so: $(RUBYARCHDIR)
install-so: $(RUBYARCHDIR)/$(DLLIB)
$(RUBYARCHDIR)/$(DLLIB): $(DLLIB)
	$(INSTALL_PROG) $(DLLIB) $(RUBYARCHDIR)
install-rb: pre-install-rb install-rb-default
install-rb-default: pre-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
$(RUBYARCHDIR):
	$(MAKEDIRS) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .cxx .cpp .C .o

.cc.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cxx.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cpp.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.C.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.c.o:
	$(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) -c $<

$(DLLIB): $(OBJS) Makefile
	@-$(RM) $@
	$(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



$(OBJS): ruby.h defines.h
