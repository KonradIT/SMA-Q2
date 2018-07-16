.class Lcom/smalife/activity/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/MainActivity;->showNotifiListnerPrompt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/MainActivity;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/smalife/activity/MainActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/MainActivity$4;->this$0:Lcom/smalife/activity/MainActivity;

    iput-object p2, p0, Lcom/smalife/activity/MainActivity$4;->val$dialog:Landroid/app/Dialog;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/smalife/activity/MainActivity$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 192
    iget-object v0, p0, Lcom/smalife/activity/MainActivity$4;->this$0:Lcom/smalife/activity/MainActivity;

    sget-object v1, Lcom/smalife/activity/MainActivity;->NOTIFICATION_LISTENER_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/smalife/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 193
    return-void
.end method
