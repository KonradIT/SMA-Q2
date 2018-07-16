.class public Lcom/smalife/upgrade/ble/service/DFUService;
.super Lcom/smalife/upgrade/ble/service/DFUBaseService;
.source "DFUService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;-><init>()V

    return-void
.end method


# virtual methods
.method protected getNotificationTarget()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11
    const-class v0, Lcom/smalife/upgrade/ble/utils/NotificationActivity;

    return-object v0
.end method
