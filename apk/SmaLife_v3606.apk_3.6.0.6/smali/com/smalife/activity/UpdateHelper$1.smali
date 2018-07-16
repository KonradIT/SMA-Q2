.class Lcom/smalife/activity/UpdateHelper$1;
.super Ljava/lang/Object;
.source "UpdateHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/UpdateHelper;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/UpdateHelper;


# direct methods
.method constructor <init>(Lcom/smalife/activity/UpdateHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/UpdateHelper$1;->this$0:Lcom/smalife/activity/UpdateHelper;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/smalife/activity/UpdateHelper$1;->this$0:Lcom/smalife/activity/UpdateHelper;

    invoke-virtual {v0}, Lcom/smalife/activity/UpdateHelper;->finish()V

    .line 25
    return-void
.end method
