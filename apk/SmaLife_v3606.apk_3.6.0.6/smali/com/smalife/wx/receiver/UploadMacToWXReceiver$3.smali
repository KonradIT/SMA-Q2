.class Lcom/smalife/wx/receiver/UploadMacToWXReceiver$3;
.super Lcom/google/gson/reflect/TypeToken;
.source "UploadMacToWXReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->getDeviceId(Ljava/lang/String;)Lcom/smalife/wx/bean/DeviceIdBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Lcom/smalife/wx/bean/DeviceIdBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/wx/receiver/UploadMacToWXReceiver;


# direct methods
.method constructor <init>(Lcom/smalife/wx/receiver/UploadMacToWXReceiver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$3;->this$0:Lcom/smalife/wx/receiver/UploadMacToWXReceiver;

    .line 147
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
