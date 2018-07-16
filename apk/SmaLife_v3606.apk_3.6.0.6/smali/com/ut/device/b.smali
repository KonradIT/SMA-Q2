.class public Lcom/ut/device/b;
.super Ljava/lang/Object;
.source "UTDevice.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-static {p0}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    invoke-static {p2}, Lcom/ta/utdid2/aid/AidManager;->getInstance(Landroid/content/Context;)Lcom/ta/utdid2/aid/AidManager;

    move-result-object v0

    invoke-static {p2}, Lcom/ut/device/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/ta/utdid2/aid/AidManager;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/ut/device/AidCallback;)V
    .locals 2

    .prologue
    .line 42
    invoke-static {p2}, Lcom/ta/utdid2/aid/AidManager;->getInstance(Landroid/content/Context;)Lcom/ta/utdid2/aid/AidManager;

    move-result-object v0

    invoke-static {p2}, Lcom/ut/device/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1, p3}, Lcom/ta/utdid2/aid/AidManager;->requestAid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ut/device/AidCallback;)V

    .line 43
    return-void
.end method
