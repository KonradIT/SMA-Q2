.class public Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;
.super Ljava/lang/Object;
.source "DefaultContactViewItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/smssdk/gui/DefaultContactViewItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public bg:Landroid/view/View;

.field public btnAdd:Landroid/widget/Button;

.field public ivContact:Lm/framework/ui/widget/asyncview/AsyncImageView;

.field final synthetic this$0:Lcn/smssdk/gui/DefaultContactViewItem;

.field public tvContact:Landroid/widget/TextView;

.field public tvName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcn/smssdk/gui/DefaultContactViewItem;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcn/smssdk/gui/DefaultContactViewItem$ViewHolder;->this$0:Lcn/smssdk/gui/DefaultContactViewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
