.class public Lm/framework/ui/widget/asyncview/SimpleOnImageGotListener;
.super Ljava/lang/Object;
.source "SimpleOnImageGotListener.java"

# interfaces
.implements Lm/framework/ui/widget/asyncview/OnImageGotListener;


# static fields
.field public static final INSTANCE:Lm/framework/ui/widget/asyncview/SimpleOnImageGotListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lm/framework/ui/widget/asyncview/SimpleOnImageGotListener;

    invoke-direct {v0}, Lm/framework/ui/widget/asyncview/SimpleOnImageGotListener;-><init>()V

    sput-object v0, Lm/framework/ui/widget/asyncview/SimpleOnImageGotListener;->INSTANCE:Lm/framework/ui/widget/asyncview/SimpleOnImageGotListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public onImageGot(Lm/framework/ui/widget/asyncview/AsyncView;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "view"    # Lm/framework/ui/widget/asyncview/AsyncView;
    .param p2, "image"    # Landroid/graphics/Bitmap;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 21
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 22
    invoke-interface {p1}, Lm/framework/ui/widget/asyncview/AsyncView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    .end local p2    # "image":Landroid/graphics/Bitmap;
    :goto_0
    return-object p2

    .restart local p2    # "image":Landroid/graphics/Bitmap;
    :cond_0
    const/4 p2, 0x0

    goto :goto_0
.end method
