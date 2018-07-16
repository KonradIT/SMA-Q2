.class Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$5;
.super Ljava/lang/Object;
.source "AbstractSmartLinkerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->onLinked(Lcom/hiflying/smartlink/SmartLinkedModule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

.field private final synthetic val$module:Lcom/hiflying/smartlink/SmartLinkedModule;


# direct methods
.method constructor <init>(Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;Lcom/hiflying/smartlink/SmartLinkedModule;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$5;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    iput-object p2, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$5;->val$module:Lcom/hiflying/smartlink/SmartLinkedModule;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 166
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$5;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    invoke-static {v0}, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->access$2(Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$5;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;

    const-string v2, "hiflying_smartlinker_new_module_found"

    invoke-static {v2}, Lcom/hiflying/smartlink/R1;->string(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$5;->val$module:Lcom/hiflying/smartlink/SmartLinkedModule;

    invoke-virtual {v4}, Lcom/hiflying/smartlink/SmartLinkedModule;->getMac()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$5;->val$module:Lcom/hiflying/smartlink/SmartLinkedModule;

    invoke-virtual {v5}, Lcom/hiflying/smartlink/SmartLinkedModule;->getModuleIP()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 168
    return-void
.end method
