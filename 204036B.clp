;: Choose Your Mobile Phone by Anuradha Dharmasiri
CLIPS> (defrule Menu
 (not (BudgetChoice ?))
=> (printout t crlf crlf crlf crlf 
"WELCOME TO ANURADHA MOBILE" crlf crlf crlf
"Select your Budget Range " crlf crlf
"1) Below 50,000" crlf crlf
"2) Above 50,000" crlf crlf
" Enter your choice here (1|2): " )
(assert (BudgetChoice (read))))
:;Rule Below Budget of Rs.50,000 

:;-----------RULE 1---------------------
(defrule Below_50000_0 
(BudgetChoice 1)
?retractCh1 <- (BudgetChoice 1)
(not (SelectOs ?))
 =>  (retract ?retractCh1)
(printout t crlf crlf
"Choose an Operating System " crlf crlf
"1) Android" crlf crlf
"2) IOS" crlf crlf
" Enter your choice here (1|2): " )
 (assert (SelectOs (read))))



:;-----------RULE 2---------------------
(defrule Below_50000_1 
(SelectOs 1)
?retractCh1 <- (SelectOs 1)
(not (PerfomenceChoice ?))
 =>  (retract ?retractCh1)
(printout t crlf crlf
"Select Perfomence level" crlf crlf
"1) Low pefomence" crlf crlf
"2) Medium perfomence" crlf crlf
" Enter your choice here (1|2): " )
 (assert (PerfomenceChoice (read))))

:;-----------RULE 3---------------------
(defrule Below_50000_2 
(PerfomenceChoice 1)
?retractCh1 <- (PerfomenceChoice 1)
(not (ifBRANDchoice ?))
 =>  (retract ?retractCh1)
(printout t crlf crlf
"Choose a Brand Name " crlf crlf
"1) SAMSUNG" crlf crlf
"2) OPPO" crlf crlf
"3) HUAWEI" crlf crlf
" Enter your choice here (1|2|3): " )
 (assert (ifBRANDchoice (read))))
:;--------------RULE 4--------------------
(defrule Below_50000_3 
 (ifBRANDchoice 1)
 ?retractChy <- (ifBRANDchoice 1)
 =>
 (retract ?retractChy)
(printout t  crlf crlf crlf "In our Shop there are Two Phones available:" crlf crlf
          "1) SAMSUNG A30  RS 30 000" crlf
          "2) SAMSUNG M20  RS 23 000" crlf crlf))
:;--------------RULE 5--------------------
(defrule Below_50000_4 
 (ifBRANDchoice 2)
 ?retractChy <- (ifBRANDchoice 2)
 =>
 (retract ?retractChy)
(printout t   crlf crlf crlf "In our Shop there are Two Phones available:" crlf crlf
          "1) OPPO A17  RS 30 000" crlf
          "2) OPPO M20  RS 20 000" crlf crlf))
:;--------------RULE 6--------------------
(defrule Below_50000_5 
 (ifBRANDchoice 3)
 ?retractChy <- (ifBRANDchoice 3)
 =>
 (retract ?retractChy)
(printout t   crlf crlf crlf "In our Shop there are Two Phones available:" crlf crlf
          "1) HUAWEI A30  RS 30 000" crlf
          "2) HUAWEI M20  RS 20 000" crlf crlf))
:;-----------RULE 7---------------------
(defrule Below_50000_6 
(PerfomenceChoice 2)
?retractCh1 <- (PerfomenceChoice 2)
(not (ifBRANDchoice2 ?))
 =>  (retract ?retractCh1)
(printout t crlf crlf
"Choose an Brand Name " crlf crlf
"1) SAMSUNG" crlf crlf
"2) OPPO" crlf crlf
"3) HUAWEI" crlf crlf
" Enter your choice here (1|2|3): " )
 (assert (ifBRANDchoice2 (read))))


:;--------------RULE 8--------------------
(defrule Below_50000_7 
 (ifBRANDchoice2 1)
 ?retractChy <- (ifBRANDchoice2 1)
 =>
 (retract ?retractChy)
(printout t     crlf crlf crlf "In our Shop there are Two Phones available:" crlf  crlf 
          "1) SAMSUNG A50  RS 45 000" crlf
          "2) SAMSUNG M60  RS 44 000" crlf crlf))

:;--------------RULE 9--------------------
(defrule Below_50000_8 
 (ifBRANDchoice2 2)
 ?retractChy <- (ifBRANDchoice2 2)
 =>
 (retract ?retractChy)
(printout t  crlf  crlf crlf "In our Shop there are Two Phones available:" crlf crlf
          "1) OPPO A58  RS 43 000" crlf
          "2) OPPO D90   RS 46 000" crlf crlf))

:;--------------RULE 10--------------------
(defrule Below_50000_9
 (ifBRANDchoice2 3)
 ?retractChy <- (ifBRANDchoice2 3)
 =>
 (retract ?retractChy)
(printout t  crlf  crlf crlf " In our Shop there are Two Phones available:" crlf crlf 
          "1) HUAWEIG A60  RS 42 000" crlf
          "2) HUAWEI M60   RS 46 000" crlf crlf))

:;-----------RULE 11---------------------
(defrule Below_50000_10 
(SelectOs 2)
?retractCh1 <- (SelectOs 2)
(not (PerfomenceChoiceIOS ?))
 =>  (retract ?retractCh1)
(printout t crlf crlf
"Choose an Perfomence " crlf crlf
"1) Low pefomence" crlf crlf
"2) Medium perfomence" crlf crlf
" Enter your choice here (1|2): " )
 (assert (PerfomenceChoiceIOS (read))))

:;--------------RULE 12--------------------
(defrule Below_50000_11 
 (PerfomenceChoiceIOS 1)
 ?retractChy <- (PerfomenceChoiceIOS 1)
 =>
 (retract ?retractChy)
(printout t  crlf  crlf crlf "In our Shop there are Two Phones available:" crlf crlf 
          "1) IPhone 6S  RS 21 000" crlf
          "2) IPhone 7S  RS 30 000" crlf crlf))

:;--------------RULE 13--------------------
(defrule Below_50000_12 
 (PerfomenceChoiceIOS 2)
 ?retractChy <- (PerfomenceChoiceIOS 2)
 =>
 (retract ?retractChy)
(printout t  crlf  crlf crlf "In our Shop there are Two Phones available:" crlf crlf 
          "1) IPhone 9   RS 47 000" crlf
          "2) IPhone 10  RS 49 000" crlf crlf))


:;-----------RULE 14---------------------
(defrule ABOVE_50000_1 
(BudgetChoice 2)
?retractCh2 <- (BudgetChoice 2)
(not (SelectOsAbove ?))
 =>  (retract ?retractCh2 )
(printout t crlf crlf
"Choose an Operating System " crlf crlf
"1) Android" crlf crlf
"2) IOS" crlf crlf
" Enter your choice here (1|2): " )
 (assert (SelectOsAbove (read))))

:;-----------RULE 15---------------------
(defrule ABOVE_50000_2 
(SelectOsAbove 1)
?retractCh2  <- (SelectOsAbove 1)
(not (PurposeBudgetChoice ?))
 =>  (retract ?retractCh2 )
(printout t crlf crlf
"Choose an Purpose" crlf crlf
"1) General purpose" crlf crlf
"2) Gaming" crlf crlf
"3) Photography & Video Recording" crlf crlf
" Enter your choice here (1|2|3): " )
 (assert (PurposeBudgetChoice (read))))

:;-----------RULE 16---------------------
(defrule ABOVE_50000_3 
(PurposeBudgetChoice 1)
?retractCh2 <- (PurposeBudgetChoice 1)
(not (BrandWhat ?))
 =>  (retract ?retractCh2)
(printout t crlf crlf
"Choose an Brand Name " crlf crlf
"1) SAMSUNG" crlf crlf
"2) OPPO" crlf crlf
"3) HUAWEI" crlf crlf
" Enter your choice here (1|2|3): " )
 (assert (BrandWhat (read))))

:;--------------RULE 17--------------------
((defrule ABOVE_50000_4 
 (BrandWhat 1)
 ?retractChy <- (BrandWhat 1)
 =>
 (retract ?retractChy)
(printout t  crlf  crlf crlf "In our Shop there are Three Phones available:" crlf crlf 
          "1) Samsung Galaxy S23   RS 77 000" crlf
          "1) Samsung Galaxy S22   RS 87 000" crlf
          "2) Samsung Galaxy M33   RS 92 000" crlf crlf))



:;--------------RULE 18--------------------
((defrule ABOVE_50000_5 
 (BrandWhat 2)
 ?retractChy <- (BrandWhat 2)
 =>
 (retract ?retractChy)
(printout t  crlf  crlf crlf "In our Shop there are Three Phones available:" crlf crlf 
          "1) OPPO A78   RS 69 000" crlf
          "1) OPPO A58   RS 78 000" crlf
          "2) OPPO A17k  RS 110 000" crlf crlf))


:;--------------RULE 19--------------------
((defrule ABOVE_50000_6 
 (BrandWhat 3)
 ?retractChy <- (BrandWhat 3)
 =>
 (retract ?retractChy)
(printout t  crlf  crlf crlf "In our Shop there are Three Phones available:" crlf crlf 
          "1) Huawei nova Y908  RS 65 000" crlf
          "1) Huawei nova Y71   RS 75 000" crlf
          "2) Huawei nova Y70   RS 95 000" crlf crlf))

:;-----------RULE 20---------------------
(defrule ABOVE_50000_7
(PurposeBudgetChoice 2)
?retractCh2 <- (PurposeBudgetChoice 2)
(not (BrandWhat ?))
 =>  (retract ?retractCh2)
(printout t  crlf  crlf crlf "In our Shop there is Only One Phone is available:" crlf crlf 
          
          "1) ASUS ROG 7   RS 115 000" crlf crlf))

:;-----------RULE 21---------------------
(defrule ABOVE_50000_8
(PurposeBudgetChoice 3)
?retractCh2 <- (PurposeBudgetChoice 3)
(not (BrandWhat ?))
 =>  (retract ?retractCh2)
(printout t  crlf  crlf crlf "In our Shop there is Only One Phone is available:" crlf crlf 
          
          "1) Samsung Galaxy Z(4 Camera Phone)  RS 115 000" crlf crlf))

:;-----------RULE 22---------------------
(defrule ABOVE_50000_9 
(SelectOsAbove 2)
?retractCh2  <- (SelectOsAbove 2)
(not (PerfomenceIOSAbove ?))
 =>  (retract ?retractCh2 )
(printout t crlf crlf
"Choose  perfomence level" crlf crlf
"1) Medium perfomence" crlf crlf
"2) High perfomence" crlf crlf
" Enter your choice here (1|2): " )
 (assert (PerfomenceIOSAbove (read))))

:;--------------RULE 23--------------------
((defrule ABOVE_50000_10 
 (PerfomenceIOSAbove 1)
 ?retractChy <- (PerfomenceIOSAbove 1)
 =>
 (retract ?retractChy)
(printout t  crlf  crlf crlf "In our Shop there are Three Phones available:" crlf crlf 
          "1) APPLE IPHONE 11   RS  65 000" crlf
          "2) APPLE IPHONE 12   RS  85 000" crlf
          "3) APPLE IPHONE 13   RS 105 000" crlf crlf))


:;--------------RULE 24--------------------
((defrule ABOVE_50000_11
 (PerfomenceIOSAbove 2)
 ?retractChy <- (PerfomenceIOSAbove 2)
 =>
 (retract ?retractChy)
(printout t  crlf  crlf crlf "In our Shop there are Two Phones available:" crlf crlf 
          "1) APPLE IPHONE 14 PRO   RS 145 000" crlf
          "2) APPLE IPHONE 15 PRO   RS 175 000" crlf crlf))


          