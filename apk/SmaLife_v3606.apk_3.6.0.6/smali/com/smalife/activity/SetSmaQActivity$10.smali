.class Lcom/smalife/activity/SetSmaQActivity$10;
.super Ljava/lang/Object;
.source "SetSmaQActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SetSmaQActivity;->showChoiseDialog(I[Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SetSmaQActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SetSmaQActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SetSmaQActivity$10;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 588
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$10;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v0, p2}, Lcom/smalife/activity/SetSmaQActivity;->access$18(Lcom/smalife/activity/SetSmaQActivity;I)V

    .line 589
    return-void
.end method
