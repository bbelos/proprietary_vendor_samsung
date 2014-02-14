.class public Lcom/android/settings/wimax/WimaxStatus;
.super Ljava/lang/Object;
.source "WimaxStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wimax/WimaxStatus$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WimaxStatus"

.field private static m_bLog:Z

.field private static m_bNapId:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wimax/WimaxStatus;->m_bLog:Z

    .line 9
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wimax/WimaxStatus;->m_bNapId:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static getPrintable(Landroid/content/Context;Landroid/net/fourG/wimax/WimaxState;I)Ljava/lang/String;
    .registers 7
    .parameter "context"
    .parameter "wimaxState"
    .parameter "wimaxStateDetail"

    .prologue
    const v3, 0x7f06000c

    const v2, 0x7f06000b

    .line 21
    sget-object v0, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne p1, v0, :cond_d

    .line 22
    packed-switch p2, :pswitch_data_76

    .line 33
    :cond_d
    sget-object v0, Lcom/android/settings/wimax/WimaxStatus$1;->$SwitchMap$android$net$fourG$wimax$WimaxState:[I

    invoke-virtual {p1}, Landroid/net/fourG/wimax/WimaxState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7e

    .line 54
    const/4 v0, 0x0

    :goto_19
    return-object v0

    .line 24
    :pswitch_1a
    sget-boolean v0, Lcom/android/settings/wimax/WimaxStatus;->m_bNapId:Z

    if-eqz v0, :cond_23

    .line 25
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 27
    :cond_23
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 29
    :pswitch_28
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 35
    :pswitch_30
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 37
    :pswitch_38
    sget-boolean v0, Lcom/android/settings/wimax/WimaxStatus;->m_bNapId:Z

    if-eqz v0, :cond_41

    .line 38
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 40
    :cond_41
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 42
    :pswitch_46
    const v0, 0x7f06000f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 44
    :pswitch_4e
    const v0, 0x7f060010

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 46
    :pswitch_56
    const v0, 0x7f060011

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 48
    :pswitch_5e
    const v0, 0x7f060012

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 50
    :pswitch_66
    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 52
    :pswitch_6e
    const v0, 0x7f060014

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 22
    :pswitch_data_76
    .packed-switch 0x5
        :pswitch_1a
        :pswitch_28
    .end packed-switch

    .line 33
    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_30
        :pswitch_38
        :pswitch_46
        :pswitch_4e
        :pswitch_56
        :pswitch_5e
        :pswitch_66
        :pswitch_6e
    .end packed-switch
.end method

.method public static getStatus(Landroid/content/Context;Landroid/net/fourG/wimax/WimaxState;I)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "wimaxState"
    .parameter "wimaxStateDetail"

    .prologue
    .line 13
    sget-boolean v0, Lcom/android/settings/wimax/WimaxStatus;->m_bLog:Z

    if-eqz v0, :cond_32

    const-string v0, "WimaxStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getStatus]\tm_bNapId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/wimax/WimaxStatus;->m_bNapId:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", WimaxState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extraStateDetail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_32
    invoke-static {p0, p1, p2}, Lcom/android/settings/wimax/WimaxStatus;->getPrintable(Landroid/content/Context;Landroid/net/fourG/wimax/WimaxState;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setEnableLog(Z)V
    .registers 1
    .parameter "blog"

    .prologue
    .line 63
    sput-boolean p0, Lcom/android/settings/wimax/WimaxStatus;->m_bLog:Z

    .line 64
    return-void
.end method

.method public static updateNapId(Z)V
    .registers 1
    .parameter "bNapId"

    .prologue
    .line 59
    sput-boolean p0, Lcom/android/settings/wimax/WimaxStatus;->m_bNapId:Z

    .line 60
    return-void
.end method
