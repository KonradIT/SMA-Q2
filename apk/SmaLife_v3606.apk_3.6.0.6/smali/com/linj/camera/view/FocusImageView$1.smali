.class Lcom/linj/camera/view/FocusImageView$1;
.super Ljava/lang/Object;
.source "FocusImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linj/camera/view/FocusImageView;->startFocus(Landroid/graphics/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linj/camera/view/FocusImageView;


# direct methods
.method constructor <init>(Lcom/linj/camera/view/FocusImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/linj/camera/view/FocusImageView$1;->this$0:Lcom/linj/camera/view/FocusImageView;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/linj/camera/view/FocusImageView$1;->this$0:Lcom/linj/camera/view/FocusImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/linj/camera/view/FocusImageView;->setVisibility(I)V

    .line 84
    return-void
.end method
