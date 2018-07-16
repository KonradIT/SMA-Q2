.class Lcom/smalife/activity/InputActivity$2;
.super Ljava/lang/Object;
.source "InputActivity.java"

# interfaces
.implements Lcom/accloud/cloudservice/VoidCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/InputActivity;->goNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/InputActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/InputActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/InputActivity$2;->this$0:Lcom/smalife/activity/InputActivity;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 0
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 191
    return-void
.end method

.method public success()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method
