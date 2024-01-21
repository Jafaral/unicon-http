
UC=unicon
UFLAGS= -u

SRC=basehttpserver.icn uhttpserv.icn
OBJ=basehttpserver.u uhttpserv.u

uhttpserv: $(OBJ)
	$(UC) $(DASHG) -o uhttpserv $(OBJ)

basehttpserver.u: basehttpserver.icn
uhttpserv.u: uhttpserv.icn basehttpserver.u

%.u: %.icn
	$(UC) $(UFLAGS) -c $<

clean:
	$(RM) -f *.u uhttpserv uniclass*
