.class public final Lorg/android/agoo/ut/impl/UmengUT;
.super Ljava/lang/Object;
.source "UmengUT.java"

# interfaces
.implements Lorg/android/agoo/ut/UT;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final commitEvent(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public final commitEvent(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public final commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public final varargs commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public final getUtdId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    :try_start_0
    invoke-static {p1}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCaughException(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public final start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public final stop(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    return-void
.end method
