.class Lcn/smssdk/gui/DefaultContactViewItem$1;
.super Ljava/lang/Object;
.source "DefaultContactViewItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/DefaultContactViewItem;->getView(Ljava/util/HashMap;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/DefaultContactViewItem;

.field private final synthetic val$parent:Landroid/view/ViewGroup;

.field private final synthetic val$user:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/DefaultContactViewItem;Ljava/util/HashMap;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/smssdk/gui/DefaultContactViewItem$1;->this$0:Lcn/smssdk/gui/DefaultContactViewItem;

    iput-object p2, p0, Lcn/smssdk/gui/DefaultContactViewItem$1;->val$user:Ljava/util/HashMap;

    iput-object p3, p0, Lcn/smssdk/gui/DefaultContactViewItem$1;->val$parent:Landroid/view/ViewGroup;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    iget-object v1, p0, Lcn/smssdk/gui/DefaultContactViewItem$1;->val$user:Ljava/util/HashMap;

    const-string v2, "fia"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcn/smssdk/gui/DefaultContactViewItem$1;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/smssdk/gui/DefaultContactViewItem$1;->val$user:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 127
    :goto_0
    return-void

    .line 123
    :cond_0
    new-instance v0, Lcn/smssdk/gui/ContactDetailPage;

    invoke-direct {v0}, Lcn/smssdk/gui/ContactDetailPage;-><init>()V

    .line 124
    .local v0, "contactDetailPage":Lcn/smssdk/gui/ContactDetailPage;
    iget-object v1, p0, Lcn/smssdk/gui/DefaultContactViewItem$1;->val$user:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcn/smssdk/gui/ContactDetailPage;->setContact(Ljava/util/HashMap;)V

    .line 125
    iget-object v1, p0, Lcn/smssdk/gui/DefaultContactViewItem$1;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/smssdk/gui/ContactDetailPage;->show(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
