.class Lcn/smssdk/gui/ContactDetailPage$2;
.super Ljava/lang/Object;
.source "ContactDetailPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/ContactDetailPage;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/ContactDetailPage;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/ContactDetailPage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/smssdk/gui/ContactDetailPage$2;->this$0:Lcn/smssdk/gui/ContactDetailPage;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 162
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 163
    iget-object v1, p0, Lcn/smssdk/gui/ContactDetailPage$2;->this$0:Lcn/smssdk/gui/ContactDetailPage;

    iget-object v0, p0, Lcn/smssdk/gui/ContactDetailPage$2;->this$0:Lcn/smssdk/gui/ContactDetailPage;

    invoke-static {v0}, Lcn/smssdk/gui/ContactDetailPage;->access$0(Lcn/smssdk/gui/ContactDetailPage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/smssdk/gui/ContactDetailPage;->access$1(Lcn/smssdk/gui/ContactDetailPage;Ljava/lang/String;)V

    .line 164
    return-void
.end method
