.class public final Lorg/android/agoo/ut/impl/UcwebUT;
.super Ljava/lang/Object;
.source "UcwebUT.java"

# interfaces
.implements Lorg/android/agoo/ut/UT;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final commitEvent(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public final commitEvent(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public final commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public final varargs commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public final getUtdId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    :try_start_0
    invoke-static {p1}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCaughException(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public final start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    return-void
.end method

.method public final stop(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    return-void
.end method
