.class public Lcom/samsung/wimax/CT/CT;
.super Landroid/app/Activity;
.source "CT.java"

# interfaces
.implements Lcom/samsung/wimax/CT/CTMsgDefine;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final HIM_MNG_RET_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CT MSG"


# instance fields
.field private cm:Landroid/net/ConnectivityManager;

.field private doUpdateGUI:Ljava/lang/Runnable;

.field mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field mTask:Ljava/lang/Runnable;

.field mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

.field private mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

.field public m_bOpenDevice:Z

.field public m_bOpenMain:Z

.field public m_bPoweroff:Z

.field public m_bPoweron:Z

.field public strBW:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/samsung/wimax/CT/CT;->m_bOpenDevice:Z

    .line 34
    iput-boolean v0, p0, Lcom/samsung/wimax/CT/CT;->m_bPoweron:Z

    .line 35
    iput-boolean v0, p0, Lcom/samsung/wimax/CT/CT;->m_bPoweroff:Z

    .line 36
    iput-boolean v0, p0, Lcom/samsung/wimax/CT/CT;->m_bOpenMain:Z

    .line 43
    new-instance v0, Lcom/samsung/wimax/CT/WiMAXNative;

    invoke-direct {v0}, Lcom/samsung/wimax/CT/WiMAXNative;-><init>()V

    iput-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/wimax/CT/CT;->mHandler:Landroid/os/Handler;

    .line 538
    new-instance v0, Lcom/samsung/wimax/CT/CT$1;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/CT/CT$1;-><init>(Lcom/samsung/wimax/CT/CT;)V

    iput-object v0, p0, Lcom/samsung/wimax/CT/CT;->mTask:Ljava/lang/Runnable;

    .line 554
    new-instance v0, Lcom/samsung/wimax/CT/CT$2;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/CT/CT$2;-><init>(Lcom/samsung/wimax/CT/CT;)V

    iput-object v0, p0, Lcom/samsung/wimax/CT/CT;->doUpdateGUI:Ljava/lang/Runnable;

    return-void
.end method

.method private CheckWimaxOn()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 575
    const-string v2, "CT MSG"

    const-string v3, "CheckWimaxOn"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/wimax/CT/CT;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 579
    iget-object v2, p0, Lcom/samsung/wimax/CT/CT;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->is4GEnabled()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 580
    const-string v2, "CT MSG"

    const-string v3, "WiMAX modem is ON"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v2, p0, Lcom/samsung/wimax/CT/CT;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    .line 586
    :cond_23
    const-wide/16 v2, 0xc8

    :try_start_25
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_3d

    .line 591
    :goto_28
    iget-object v2, p0, Lcom/samsung/wimax/CT/CT;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v2

    if-ne v2, v4, :cond_23

    .line 599
    :goto_30
    const v2, 0x7f080001

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 600
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 601
    return-void

    .line 587
    .end local v0           #button:Landroid/widget/Button;
    :catch_3d
    move-exception v1

    .line 589
    .local v1, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_28

    .line 596
    .end local v1           #e1:Ljava/lang/InterruptedException;
    :cond_42
    const-string v2, "CT MSG"

    const-string v3, "WiMAX modem is OFF"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method private OpenDevice()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 604
    const/4 v3, -0x1

    .line 606
    .local v3, ret:I
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/wimax/CT/CT;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 608
    iget-object v5, p0, Lcom/samsung/wimax/CT/CT;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v5}, Landroid/net/fourG/wimax/Wimax4GManager;->is4GEnabled()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 609
    iget-object v5, p0, Lcom/samsung/wimax/CT/CT;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v5, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    .line 612
    :cond_16
    const-wide/16 v5, 0xc8

    :try_start_18
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_7e

    .line 617
    :goto_1b
    iget-object v5, p0, Lcom/samsung/wimax/CT/CT;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v5}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v5

    if-ne v5, v7, :cond_16

    .line 623
    :cond_23
    const-string v5, "CT MSG"

    const-string v6, "Try to WiMAX power on."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v5, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    invoke-virtual {v5}, Lcom/samsung/wimax/CT/WiMAXNative;->WiMAXPowerOn()Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/wimax/CT/CT;->m_bPoweron:Z

    .line 626
    iget-boolean v5, p0, Lcom/samsung/wimax/CT/CT;->m_bPoweron:Z

    if-eqz v5, :cond_95

    .line 627
    const-string v5, "CT MSG"

    const-string v6, "Power on : success!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const-wide/16 v5, 0xdac

    :try_start_3f
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_42
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_42} :catch_83

    .line 636
    :goto_42
    if-eq v3, v7, :cond_58

    .line 637
    const/4 v2, 0x0

    .local v2, i:I
    :goto_45
    const/16 v5, 0x3c

    if-ge v2, v5, :cond_58

    .line 639
    const-string v5, "CT MSG"

    const-string v6, "Device Open >>> start !!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v5, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    invoke-virtual {v5}, Lcom/samsung/wimax/CT/WiMAXNative;->wmxopen()I

    move-result v3

    .line 642
    if-ne v3, v7, :cond_88

    .line 658
    .end local v2           #i:I
    :cond_58
    :goto_58
    if-eq v3, v7, :cond_a6

    .line 659
    const-string v5, "OpenDevice fail!!!"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 660
    const-string v5, "CT MSG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OpenDevice fail!!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iput-boolean v8, p0, Lcom/samsung/wimax/CT/CT;->m_bOpenDevice:Z

    .line 729
    :goto_7d
    return-void

    .line 613
    :catch_7e
    move-exception v1

    .line 615
    .local v1, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1b

    .line 630
    .end local v1           #e1:Ljava/lang/InterruptedException;
    :catch_83
    move-exception v1

    .line 632
    .restart local v1       #e1:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_42

    .line 646
    .end local v1           #e1:Ljava/lang/InterruptedException;
    .restart local v2       #i:I
    :cond_88
    const-wide/16 v5, 0xc8

    :try_start_8a
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8d
    .catch Ljava/lang/InterruptedException; {:try_start_8a .. :try_end_8d} :catch_90

    .line 637
    :goto_8d
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 647
    :catch_90
    move-exception v1

    .line 649
    .restart local v1       #e1:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_8d

    .line 654
    .end local v1           #e1:Ljava/lang/InterruptedException;
    .end local v2           #i:I
    :cond_95
    const-string v5, "CT MSG"

    const-string v6, "Power on : fail"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const-string v5, "Power On >>> fail !!!!!"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_58

    .line 663
    :cond_a6
    iput-boolean v7, p0, Lcom/samsung/wimax/CT/CT;->m_bOpenDevice:Z

    .line 664
    iput-boolean v7, p0, Lcom/samsung/wimax/CT/CT;->m_bOpenMain:Z

    .line 665
    const-string v5, "OpenDevice Success!!!"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 666
    const-string v5, "CT MSG"

    const-string v6, "OpenDevice Success!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const v5, 0x7f080047

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 669
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 671
    const v5, 0x7f080048

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 672
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 674
    const v5, 0x7f080005

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 675
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 677
    const v5, 0x7f08000d

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 678
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 680
    const v5, 0x7f080011

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 681
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 683
    const v5, 0x7f080015

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 684
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 686
    const v5, 0x7f080019

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 687
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 689
    const v5, 0x7f08001d

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 690
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 692
    const v5, 0x7f080021

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 693
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 695
    const v5, 0x7f080025

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 696
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 698
    const v5, 0x7f080029

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 699
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 701
    const v5, 0x7f08002d

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 702
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 704
    const v5, 0x7f080009

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 705
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 707
    const v5, 0x7f080031

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 708
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 710
    const v5, 0x7f080035

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 711
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 713
    const v5, 0x7f080039

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 714
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 716
    const v5, 0x7f08003d

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 717
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 719
    const v5, 0x7f080041

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 720
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 722
    const v5, 0x7f080045

    invoke-virtual {p0, v5}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 723
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 725
    new-instance v4, Ljava/lang/Thread;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/wimax/CT/CT;->mTask:Ljava/lang/Runnable;

    const-string v7, "RecvCTMsg"

    invoke-direct {v4, v5, v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 726
    .local v4, thr:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 727
    invoke-direct {p0}, Lcom/samsung/wimax/CT/CT;->ReadData()V

    goto/16 :goto_7d
.end method

.method private ProcessAck(Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;)V
    .registers 4
    .parameter "msgPkt"

    .prologue
    .line 930
    const-string v0, "CT MSG"

    const-string v1, "<<<< ProcessAck"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    return-void
.end method

.method private ProcessData(Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;)V
    .registers 13
    .parameter "msgPkt"

    .prologue
    const v10, 0x7f040003

    const v9, 0x7f040004

    const v8, 0x7f030002

    const v7, 0x1090008

    .line 732
    const-string v4, "CT MSG"

    const-string v5, "<<<< ProcessData"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->gId:I

    packed-switch v4, :pswitch_data_478

    .line 924
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown CT gId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->gId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :goto_32
    :pswitch_32
    return-void

    .line 737
    :pswitch_33
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_72

    .line 738
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_AUTH_POLICY_SPT] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const v4, 0x7f040005

    invoke-static {p0, v4, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 740
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 741
    const v4, 0x7f080030

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 742
    .local v3, sp:Landroid/widget/Spinner;
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 744
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 745
    .local v2, position:I
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_32

    .line 746
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v2           #position:I
    .end local v3           #sp:Landroid/widget/Spinner;
    :cond_72
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_a1

    .line 747
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_IDLE_TIMER] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const v4, 0x7f08003c

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 749
    .local v1, eTxt:Landroid/widget/EditText;
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_32

    .line 750
    .end local v1           #eTxt:Landroid/widget/EditText;
    :cond_a1
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/16 v5, 0xc

    if-ne v4, v5, :cond_df

    .line 751
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_PWRCTRL_ON] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-static {p0, v9, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 753
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 754
    const v4, 0x7f080040

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 755
    .restart local v3       #sp:Landroid/widget/Spinner;
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 757
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 758
    .restart local v2       #position:I
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_32

    .line 759
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v2           #position:I
    .end local v3           #sp:Landroid/widget/Spinner;
    :cond_df
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/16 v5, 0xe

    if-ne v4, v5, :cond_10f

    .line 771
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_TX_POWER] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const v4, 0x7f080044

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 776
    .restart local v1       #eTxt:Landroid/widget/EditText;
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_32

    .line 777
    .end local v1           #eTxt:Landroid/widget/EditText;
    :cond_10f
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/16 v5, 0x1d

    if-ne v4, v5, :cond_14d

    .line 778
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_ARQ_SPT] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-static {p0, v9, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 780
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 781
    const v4, 0x7f080034

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 782
    .restart local v3       #sp:Landroid/widget/Spinner;
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 784
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 785
    .restart local v2       #position:I
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_32

    .line 786
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v2           #position:I
    .end local v3           #sp:Landroid/widget/Spinner;
    :cond_14d
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/16 v5, 0x1e

    if-ne v4, v5, :cond_18e

    .line 787
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_SLEEP_IDLE_TRANS] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const v4, 0x7f040007

    invoke-static {p0, v4, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 789
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 790
    const v4, 0x7f080038

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 791
    .restart local v3       #sp:Landroid/widget/Spinner;
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 793
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 794
    .restart local v2       #position:I
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_32

    .line 795
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v2           #position:I
    .end local v3           #sp:Landroid/widget/Spinner;
    :cond_18e
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_1cc

    .line 796
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_MIMO_SPT] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-static {p0, v9, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 798
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 799
    const v4, 0x7f080028

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 800
    .restart local v3       #sp:Landroid/widget/Spinner;
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 802
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 803
    .restart local v2       #position:I
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_32

    .line 804
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v2           #position:I
    .end local v3           #sp:Landroid/widget/Spinner;
    :cond_1cc
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/16 v5, 0x61

    if-ne v4, v5, :cond_20d

    .line 805
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_BEST_FA_NUM] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const v4, 0x7f040006

    invoke-static {p0, v4, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 809
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 810
    const v4, 0x7f080008

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 811
    .restart local v3       #sp:Landroid/widget/Spinner;
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 813
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 814
    .restart local v2       #position:I
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_32

    .line 815
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v2           #position:I
    .end local v3           #sp:Landroid/widget/Spinner;
    :cond_20d
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/16 v5, 0x62

    if-ne v4, v5, :cond_23d

    .line 816
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_BEST_FA_FREQ_0] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const v4, 0x7f08000c

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 828
    .restart local v1       #eTxt:Landroid/widget/EditText;
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_32

    .line 829
    .end local v1           #eTxt:Landroid/widget/EditText;
    :cond_23d
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/16 v5, 0x63

    if-ne v4, v5, :cond_27b

    .line 830
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_BEST_FA_BW_0] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    invoke-static {p0, v10, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 832
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 833
    const v4, 0x7f080010

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 834
    .restart local v3       #sp:Landroid/widget/Spinner;
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 836
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 837
    .restart local v2       #position:I
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_32

    .line 838
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v2           #position:I
    .end local v3           #sp:Landroid/widget/Spinner;
    :cond_27b
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/16 v5, 0x65

    if-ne v4, v5, :cond_2ab

    .line 839
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_BEST_FA_FREQ_1] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const v4, 0x7f080014

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 851
    .restart local v1       #eTxt:Landroid/widget/EditText;
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_32

    .line 852
    .end local v1           #eTxt:Landroid/widget/EditText;
    :cond_2ab
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/16 v5, 0x66

    if-ne v4, v5, :cond_2e9

    .line 853
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_BEST_FA_BW_1] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-static {p0, v10, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 855
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 856
    const v4, 0x7f080018

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 857
    .restart local v3       #sp:Landroid/widget/Spinner;
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 859
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 860
    .restart local v2       #position:I
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_32

    .line 861
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v2           #position:I
    .end local v3           #sp:Landroid/widget/Spinner;
    :cond_2e9
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/16 v5, 0x68

    if-ne v4, v5, :cond_319

    .line 862
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_BEST_FA_FREQ_2] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    const v4, 0x7f08001c

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 874
    .restart local v1       #eTxt:Landroid/widget/EditText;
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_32

    .line 875
    .end local v1           #eTxt:Landroid/widget/EditText;
    :cond_319
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/16 v5, 0x69

    if-ne v4, v5, :cond_357

    .line 876
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_BEST_FA_BW_2] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-static {p0, v10, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 878
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 879
    const v4, 0x7f080020

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 880
    .restart local v3       #sp:Landroid/widget/Spinner;
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 882
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 883
    .restart local v2       #position:I
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_32

    .line 884
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v2           #position:I
    .end local v3           #sp:Landroid/widget/Spinner;
    :cond_357
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/16 v5, 0x74

    if-ne v4, v5, :cond_395

    .line 885
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_MAC_CONFIG_WIDE_SCAN_ON_OFF] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-static {p0, v9, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 887
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 888
    const v4, 0x7f080024

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 889
    .restart local v3       #sp:Landroid/widget/Spinner;
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 891
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 892
    .restart local v2       #position:I
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_32

    .line 894
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v2           #position:I
    .end local v3           #sp:Landroid/widget/Spinner;
    :cond_395
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_GID_MAC_CFG] gId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 899
    :pswitch_3bd
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    if-nez v4, :cond_3f9

    .line 900
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_RF_CONFIG_DIVERSITY_ON] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-static {p0, v9, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 902
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 903
    const v4, 0x7f08002c

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 904
    .restart local v3       #sp:Landroid/widget/Spinner;
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 906
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 907
    .restart local v2       #position:I
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_32

    .line 909
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v2           #position:I
    .end local v3           #sp:Landroid/widget/Spinner;
    :cond_3f9
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_GID_RF_CFG] gId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 914
    :pswitch_421
    iget v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_450

    .line 915
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_SYS_INFO_MAD_ADDR] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const v4, 0x7f080004

    invoke-virtual {p0, v4}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 917
    .restart local v1       #eTxt:Landroid/widget/EditText;
    iget-object v4, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_32

    .line 919
    .end local v1           #eTxt:Landroid/widget/EditText;
    :cond_450
    const-string v4, "CT MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CT_GID_SYS_INFO] gId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->msgId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 733
    :pswitch_data_478
    .packed-switch 0x0
        :pswitch_32
        :pswitch_33
        :pswitch_3bd
        :pswitch_421
    .end packed-switch
.end method

.method private ReadData()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 934
    const-string v0, "CT MSG"

    const-string v1, "<<<< ReadData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/4 v1, 0x3

    const-string v2, ""

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 939
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v1, 0x61

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 942
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v1, 0x62

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 943
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v1, 0x63

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 944
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v1, 0x65

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 945
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v1, 0x66

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 946
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v1, 0x68

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 947
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v1, 0x69

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 950
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v1, 0x74

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 953
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v1, 0x3b

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 956
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/4 v1, 0x2

    const-string v2, ""

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 959
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/4 v1, 0x7

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 962
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v1, 0x1d

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 965
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v1, 0x1e

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 968
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v1, 0xa

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 971
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v1, 0xc

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 974
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v1, 0xe

    const-string v2, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 975
    return-void
.end method

.method private SendNVRamUpdate(I)V
    .registers 3
    .parameter "cmd"

    .prologue
    .line 978
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    invoke-virtual {v0, p1}, Lcom/samsung/wimax/CT/WiMAXNative;->SendCTCmd(I)V

    .line 979
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/wimax/CT/CT;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->doUpdateGUI:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/wimax/CT/CT;Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/wimax/CT/CT;->ProcessData(Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/wimax/CT/CT;Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/wimax/CT/CT;->ProcessAck(Lcom/samsung/wimax/CT/WiMAXNative$CTMsgPkt;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 17
    .parameter "v"

    .prologue
    .line 201
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v10

    sparse-switch v10, :sswitch_data_42e

    .line 477
    :goto_7
    return-void

    .line 262
    :sswitch_8
    const-string v10, "CT MSG"

    const-string v11, "Open Device !!!!!!!!!!!!!!!!!!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :try_start_f
    iget-boolean v10, p0, Lcom/samsung/wimax/CT/CT;->m_bOpenDevice:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1a

    .line 265
    invoke-direct {p0}, Lcom/samsung/wimax/CT/CT;->ReadData()V

    goto :goto_7

    .line 269
    :catch_18
    move-exception v10

    goto :goto_7

    .line 267
    :cond_1a
    invoke-direct {p0}, Lcom/samsung/wimax/CT/CT;->OpenDevice()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1d} :catch_18

    goto :goto_7

    .line 274
    :sswitch_1e
    iget-boolean v10, p0, Lcom/samsung/wimax/CT/CT;->m_bOpenDevice:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3b

    .line 275
    iget-object v10, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/samsung/wimax/CT/WiMAXNative;->SendCTCmd(I)V

    .line 276
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    .line 278
    const-wide/16 v10, 0x7d0

    :try_start_2f
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_32} :catch_36

    .line 283
    :goto_32
    invoke-direct {p0}, Lcom/samsung/wimax/CT/CT;->ReadData()V

    goto :goto_7

    .line 279
    :catch_36
    move-exception v0

    .line 281
    .local v0, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_32

    .line 285
    .end local v0           #e1:Ljava/lang/InterruptedException;
    :cond_3b
    const-string v10, "Device is not opened!!"

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 290
    :sswitch_46
    iget-boolean v10, p0, Lcom/samsung/wimax/CT/CT;->m_bOpenDevice:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_61

    .line 291
    iget-object v10, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v11, 0x9

    invoke-virtual {v10, v11}, Lcom/samsung/wimax/CT/WiMAXNative;->SendCTCmd(I)V

    .line 292
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    .line 294
    const-wide/16 v10, 0x7d0

    :try_start_58
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5b
    .catch Ljava/lang/InterruptedException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_7

    .line 295
    :catch_5c
    move-exception v0

    .line 297
    .restart local v0       #e1:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7

    .line 300
    .end local v0           #e1:Ljava/lang/InterruptedException;
    :cond_61
    const-string v10, "Device is not opened!!"

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 305
    :sswitch_6c
    const v10, 0x7f080004

    invoke-virtual {p0, v10}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 306
    .local v1, eTxt:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 307
    .local v8, strMac:Ljava/lang/String;
    const-string v10, "CT MSG"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v10, "[[A-F][a-f][0-9]][[A-F][a-f][0-9]]-[[A-F][a-f][0-9]][[A-F][a-f][0-9]]-[[A-F][a-f][0-9]][[A-F][a-f][0-9]]-[[A-F][a-f][0-9]][[A-F][a-f][0-9]]-[[A-F][a-f][0-9]][[A-F][a-f][0-9]]-[[A-F][a-f][0-9]][[A-F][a-f][0-9]]"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 309
    .local v3, p:Ljava/util/regex/Pattern;
    invoke-virtual {v3, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 310
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_a7

    .line 311
    const-string v10, "CT MSG"

    const-string v11, "m.matches() true !"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v10, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13, v8}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 313
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_7

    .line 315
    :cond_a7
    const-string v10, "Wrong Mac addr"

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    .line 323
    .end local v1           #eTxt:Landroid/widget/EditText;
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #p:Ljava/util/regex/Pattern;
    .end local v8           #strMac:Ljava/lang/String;
    :sswitch_b3
    const v10, 0x7f08000c

    invoke-virtual {p0, v10}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 324
    .restart local v1       #eTxt:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 326
    .local v6, strFA:Ljava/lang/String;
    const-string v10, "CT MSG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Selected FA 0 : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v10, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/16 v13, 0x62

    invoke-virtual {v10, v11, v12, v13, v6}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 328
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_7

    .line 332
    .end local v1           #eTxt:Landroid/widget/EditText;
    .end local v6           #strFA:Ljava/lang/String;
    :sswitch_eb
    const v10, 0x7f080010

    invoke-virtual {p0, v10}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 333
    .local v4, sp:Landroid/widget/Spinner;
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Lcom/samsung/wimax/CT/CT;->strBW:Ljava/lang/String;

    .line 335
    const-string v10, "CT MSG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Selected FA 0 : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/wimax/CT/CT;->strBW:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v10, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/16 v13, 0x63

    iget-object v14, p0, Lcom/samsung/wimax/CT/CT;->strBW:Ljava/lang/String;

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 337
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_7

    .line 344
    .end local v4           #sp:Landroid/widget/Spinner;
    :sswitch_127
    const v10, 0x7f080014

    invoke-virtual {p0, v10}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 345
    .restart local v1       #eTxt:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 347
    .restart local v6       #strFA:Ljava/lang/String;
    const-string v10, "CT MSG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Selected FA 1 : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v10, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/16 v13, 0x65

    invoke-virtual {v10, v11, v12, v13, v6}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 349
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_7

    .line 353
    .end local v1           #eTxt:Landroid/widget/EditText;
    .end local v6           #strFA:Ljava/lang/String;
    :sswitch_15f
    const v10, 0x7f080018

    invoke-virtual {p0, v10}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 354
    .restart local v4       #sp:Landroid/widget/Spinner;
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Lcom/samsung/wimax/CT/CT;->strBW:Ljava/lang/String;

    .line 356
    const-string v10, "CT MSG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Selected FA 0 : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/wimax/CT/CT;->strBW:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v10, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/16 v13, 0x66

    iget-object v14, p0, Lcom/samsung/wimax/CT/CT;->strBW:Ljava/lang/String;

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 358
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_7

    .line 365
    .end local v4           #sp:Landroid/widget/Spinner;
    :sswitch_19b
    const v10, 0x7f08001c

    invoke-virtual {p0, v10}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 366
    .restart local v1       #eTxt:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 368
    .restart local v6       #strFA:Ljava/lang/String;
    const-string v10, "CT MSG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Selected FA 2 : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v10, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/16 v13, 0x68

    invoke-virtual {v10, v11, v12, v13, v6}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 370
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_7

    .line 374
    .end local v1           #eTxt:Landroid/widget/EditText;
    .end local v6           #strFA:Ljava/lang/String;
    :sswitch_1d3
    const v10, 0x7f080020

    invoke-virtual {p0, v10}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 375
    .restart local v4       #sp:Landroid/widget/Spinner;
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Lcom/samsung/wimax/CT/CT;->strBW:Ljava/lang/String;

    .line 377
    const-string v10, "CT MSG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Selected FA 0 : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/wimax/CT/CT;->strBW:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v10, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/16 v13, 0x69

    iget-object v14, p0, Lcom/samsung/wimax/CT/CT;->strBW:Ljava/lang/String;

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 379
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_7

    .line 383
    .end local v4           #sp:Landroid/widget/Spinner;
    :sswitch_20f
    const v10, 0x7f080024

    invoke-virtual {p0, v10}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 384
    .restart local v4       #sp:Landroid/widget/Spinner;
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 386
    .local v5, strData:Ljava/lang/String;
    const-string v10, "CT MSG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Best_FA_Option : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v10, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/16 v13, 0x74

    invoke-virtual {v10, v11, v12, v13, v5}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 388
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_7

    .line 392
    .end local v4           #sp:Landroid/widget/Spinner;
    .end local v5           #strData:Ljava/lang/String;
    :sswitch_245
    const v10, 0x7f080028

    invoke-virtual {p0, v10}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 393
    .restart local v4       #sp:Landroid/widget/Spinner;
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 395
    .restart local v5       #strData:Ljava/lang/String;
    const-string v10, "CT MSG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MIMO ON/OFF : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v10, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/16 v13, 0x3b

    invoke-virtual {v10, v11, v12, v13, v5}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 397
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_7

    .line 401
    .end local v4           #sp:Landroid/widget/Spinner;
    .end local v5           #strData:Ljava/lang/String;
    :sswitch_27b
    const v10, 0x7f08002c

    invoke-virtual {p0, v10}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 402
    .restart local v4       #sp:Landroid/widget/Spinner;
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 404
    .restart local v5       #strData:Ljava/lang/String;
    const-string v10, "CT MSG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Diversity Antenna ON/OFF : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v10, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/4 v11, 0x2

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13, v5}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 406
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_7

    .line 412
    .end local v4           #sp:Landroid/widget/Spinner;
    .end local v5           #strData:Ljava/lang/String;
    :sswitch_2b0
    const v10, 0x7f080008

    invoke-virtual {p0, v10}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 413
    .restart local v4       #sp:Landroid/widget/Spinner;
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 415
    .restart local v5       #strData:Ljava/lang/String;
    const-string v10, "CT MSG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MAX Num of used FA : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v10, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/16 v13, 0x61

    invoke-virtual {v10, v11, v12, v13, v5}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 417
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_7

    .line 421
    .end local v4           #sp:Landroid/widget/Spinner;
    .end local v5           #strData:Ljava/lang/String;
    :sswitch_2e6
    const v10, 0x7f080030

    invoke-virtual {p0, v10}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 422
    .restart local v4       #sp:Landroid/widget/Spinner;
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 424
    .restart local v5       #strData:Ljava/lang/String;
    const-string v10, "CT MSG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Auth Policy support ON/OFF : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v10, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x7

    invoke-virtual {v10, v11, v12, v13, v5}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 426
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_7

    .line 430
    .end local v4           #sp:Landroid/widget/Spinner;
    .end local v5           #strData:Ljava/lang/String;
    :sswitch_31b
    const v10, 0x7f080034

    invoke-virtual {p0, v10}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 431
    .restart local v4       #sp:Landroid/widget/Spinner;
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 433
    .restart local v5       #strData:Ljava/lang/String;
    const-string v10, "CT MSG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ARQ support ON/OFF : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v10, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/16 v13, 0x1d

    invoke-virtual {v10, v11, v12, v13, v5}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 435
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_7

    .line 439
    .end local v4           #sp:Landroid/widget/Spinner;
    .end local v5           #strData:Ljava/lang/String;
    :sswitch_351
    const v10, 0x7f080038

    invoke-virtual {p0, v10}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 440
    .restart local v4       #sp:Landroid/widget/Spinner;
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 442
    .restart local v5       #strData:Ljava/lang/String;
    const-string v10, "CT MSG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Idle_Mode ON/OFF : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v10, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/16 v13, 0x1e

    invoke-virtual {v10, v11, v12, v13, v5}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 444
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_7

    .line 448
    .end local v4           #sp:Landroid/widget/Spinner;
    .end local v5           #strData:Ljava/lang/String;
    :sswitch_387
    const v10, 0x7f08003c

    invoke-virtual {p0, v10}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 449
    .restart local v1       #eTxt:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 451
    .local v7, strIdleTimer:Ljava/lang/String;
    const-string v10, "CT MSG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IdleTimer : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v10, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/16 v13, 0xa

    invoke-virtual {v10, v11, v12, v13, v7}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 453
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_7

    .line 457
    .end local v1           #eTxt:Landroid/widget/EditText;
    .end local v7           #strIdleTimer:Ljava/lang/String;
    :sswitch_3bf
    const v10, 0x7f080040

    invoke-virtual {p0, v10}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 458
    .restart local v4       #sp:Landroid/widget/Spinner;
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 460
    .restart local v5       #strData:Ljava/lang/String;
    const-string v10, "CT MSG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Power Control ON/OFF : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v10, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/16 v13, 0xc

    invoke-virtual {v10, v11, v12, v13, v5}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 462
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_7

    .line 466
    .end local v4           #sp:Landroid/widget/Spinner;
    .end local v5           #strData:Ljava/lang/String;
    :sswitch_3f5
    const v10, 0x7f080044

    invoke-virtual {p0, v10}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 467
    .restart local v1       #eTxt:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 471
    .local v9, strTxPower:Ljava/lang/String;
    const-string v10, "CT MSG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TX Power : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v10, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/16 v13, 0xe

    invoke-virtual {v10, v11, v12, v13, v9}, Lcom/samsung/wimax/CT/WiMAXNative;->ManageTxPkt(IIILjava/lang/String;)Z

    .line 473
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    goto/16 :goto_7

    .line 201
    nop

    :sswitch_data_42e
    .sparse-switch
        0x7f080001 -> :sswitch_8
        0x7f080005 -> :sswitch_6c
        0x7f080009 -> :sswitch_2b0
        0x7f08000d -> :sswitch_b3
        0x7f080011 -> :sswitch_eb
        0x7f080015 -> :sswitch_127
        0x7f080019 -> :sswitch_15f
        0x7f08001d -> :sswitch_19b
        0x7f080021 -> :sswitch_1d3
        0x7f080025 -> :sswitch_20f
        0x7f080029 -> :sswitch_245
        0x7f08002d -> :sswitch_27b
        0x7f080031 -> :sswitch_2e6
        0x7f080035 -> :sswitch_31b
        0x7f080039 -> :sswitch_351
        0x7f08003d -> :sswitch_387
        0x7f080041 -> :sswitch_3bf
        0x7f080045 -> :sswitch_3f5
        0x7f080047 -> :sswitch_1e
        0x7f080048 -> :sswitch_46
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 49
    move-object v1, p0

    .line 50
    .local v1, cxt:Landroid/content/Context;
    iput-object p0, p0, Lcom/samsung/wimax/CT/CT;->mContext:Landroid/content/Context;

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/samsung/wimax/CT/CT;->cm:Landroid/net/ConnectivityManager;

    .line 53
    const-string v2, "CT MSG"

    const-string v3, "onCreate!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/high16 v2, 0x7f03

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/CT/CT;->setContentView(I)V

    .line 64
    const v2, 0x7f080005

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 65
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v2, 0x7f08000d

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 68
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v2, 0x7f080011

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 71
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v2, 0x7f080015

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 74
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v2, 0x7f080019

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 77
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v2, 0x7f08001d

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 80
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v2, 0x7f080021

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 83
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v2, 0x7f080025

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 86
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v2, 0x7f080029

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 89
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v2, 0x7f08002d

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 92
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v2, 0x7f080009

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 95
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v2, 0x7f080031

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 98
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v2, 0x7f080035

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 101
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v2, 0x7f080039

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 104
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v2, 0x7f08003d

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 107
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v2, 0x7f080041

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 110
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v2, 0x7f080045

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 113
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v2, 0x7f080001

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 116
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v2, 0x7f080047

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 119
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v2, 0x7f080048

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/CT/CT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 122
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    .line 481
    const-string v1, "CT MSG"

    const-string v2, "menu"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-virtual {p0}, Lcom/samsung/wimax/CT/CT;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 483
    .local v0, inflater:Landroid/view/MenuInflater;
    iget-boolean v1, p0, Lcom/samsung/wimax/CT/CT;->m_bOpenMain:Z

    if-eqz v1, :cond_14

    .line 485
    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 487
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/samsung/wimax/CT/CT;->m_bPoweron:Z

    if-eqz v0, :cond_1e

    .line 177
    const-string v0, "CT MSG"

    const-string v1, "==> Try to power off."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    invoke-virtual {v0}, Lcom/samsung/wimax/CT/WiMAXNative;->WiMAXPowerOff()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/wimax/CT/CT;->m_bPoweroff:Z

    .line 189
    iget-boolean v0, p0, Lcom/samsung/wimax/CT/CT;->m_bPoweroff:Z

    if-eqz v0, :cond_22

    .line 190
    const-string v0, "CT MSG"

    const-string v1, "Power off : success!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_1e
    :goto_1e
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 197
    return-void

    .line 192
    :cond_22
    const-string v0, "CT MSG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Power off : fail!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/wimax/CT/CT;->m_bPoweroff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v0, "Power Off >>> fail !!!!!"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1e
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 492
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_60

    move v1, v2

    .line 535
    :goto_a
    return v1

    .line 495
    :pswitch_b
    :try_start_b
    iget-boolean v2, p0, Lcom/samsung/wimax/CT/CT;->m_bOpenDevice:Z

    if-ne v2, v1, :cond_15

    .line 496
    invoke-direct {p0}, Lcom/samsung/wimax/CT/CT;->ReadData()V

    goto :goto_a

    .line 500
    :catch_13
    move-exception v2

    goto :goto_a

    .line 498
    :cond_15
    invoke-direct {p0}, Lcom/samsung/wimax/CT/CT;->OpenDevice()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_13

    goto :goto_a

    .line 505
    :pswitch_19
    iget-boolean v3, p0, Lcom/samsung/wimax/CT/CT;->m_bOpenDevice:Z

    if-ne v3, v1, :cond_33

    .line 506
    iget-object v3, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    invoke-virtual {v3, v1}, Lcom/samsung/wimax/CT/WiMAXNative;->SendCTCmd(I)V

    .line 507
    invoke-direct {p0, v2}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    .line 509
    const-wide/16 v2, 0x7d0

    :try_start_27
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2a} :catch_2e

    .line 514
    :goto_2a
    invoke-direct {p0}, Lcom/samsung/wimax/CT/CT;->ReadData()V

    goto :goto_a

    .line 510
    :catch_2e
    move-exception v0

    .line 512
    .local v0, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2a

    .line 516
    .end local v0           #e1:Ljava/lang/InterruptedException;
    :cond_33
    const-string v3, "Device is not opened!!"

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_a

    .line 521
    :pswitch_3d
    iget-boolean v3, p0, Lcom/samsung/wimax/CT/CT;->m_bOpenDevice:Z

    if-ne v3, v1, :cond_56

    .line 522
    iget-object v3, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/samsung/wimax/CT/WiMAXNative;->SendCTCmd(I)V

    .line 523
    invoke-direct {p0, v2}, Lcom/samsung/wimax/CT/CT;->SendNVRamUpdate(I)V

    .line 525
    const-wide/16 v2, 0x7d0

    :try_start_4d
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_a

    .line 526
    :catch_51
    move-exception v0

    .line 528
    .restart local v0       #e1:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_a

    .line 531
    .end local v0           #e1:Ljava/lang/InterruptedException;
    :cond_56
    const-string v3, "Device is not opened!!"

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_a

    .line 492
    :pswitch_data_60
    .packed-switch 0x7f080129
        :pswitch_b
        :pswitch_19
        :pswitch_3d
    .end packed-switch
.end method

.method protected onPause()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 142
    const-string v0, "CT MSG"

    const-string v1, "onPause!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-boolean v0, p0, Lcom/samsung/wimax/CT/CT;->m_bPoweron:Z

    if-eqz v0, :cond_28

    .line 144
    const-string v0, "CT MSG"

    const-string v1, "==> Try to power off."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT;->mWiMAXNative:Lcom/samsung/wimax/CT/WiMAXNative;

    invoke-virtual {v0}, Lcom/samsung/wimax/CT/WiMAXNative;->WiMAXPowerOff()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/wimax/CT/CT;->m_bPoweroff:Z

    .line 160
    iget-boolean v0, p0, Lcom/samsung/wimax/CT/CT;->m_bPoweroff:Z

    if-eqz v0, :cond_2f

    .line 161
    const-string v0, "CT MSG"

    const-string v1, "Power off : success!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iput-boolean v3, p0, Lcom/samsung/wimax/CT/CT;->m_bPoweron:Z

    .line 168
    :cond_28
    :goto_28
    invoke-virtual {p0}, Lcom/samsung/wimax/CT/CT;->finish()V

    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 170
    return-void

    .line 164
    :cond_2f
    const-string v0, "CT MSG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Power off : fail!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/wimax/CT/CT;->m_bPoweroff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v0, "Power Off >>> fail !!!!!"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_28
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 137
    invoke-direct {p0}, Lcom/samsung/wimax/CT/CT;->CheckWimaxOn()V

    .line 138
    return-void
.end method
