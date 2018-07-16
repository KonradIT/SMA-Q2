.class public Lcom/smalife/utils/CircleBar$BarAnimation;
.super Landroid/view/animation/Animation;
.source "CircleBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/utils/CircleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BarAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/utils/CircleBar;


# direct methods
.method public constructor <init>(Lcom/smalife/utils/CircleBar;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/smalife/utils/CircleBar$BarAnimation;->this$0:Lcom/smalife/utils/CircleBar;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 158
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 159
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/smalife/utils/CircleBar$BarAnimation;->this$0:Lcom/smalife/utils/CircleBar;

    iget-object v1, p0, Lcom/smalife/utils/CircleBar$BarAnimation;->this$0:Lcom/smalife/utils/CircleBar;

    invoke-static {v1}, Lcom/smalife/utils/CircleBar;->access$0(Lcom/smalife/utils/CircleBar;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/smalife/utils/CircleBar$BarAnimation;->this$0:Lcom/smalife/utils/CircleBar;

    invoke-static {v2}, Lcom/smalife/utils/CircleBar;->access$1(Lcom/smalife/utils/CircleBar;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/smalife/utils/CircleBar;->access$2(Lcom/smalife/utils/CircleBar;I)V

    .line 165
    iget-object v0, p0, Lcom/smalife/utils/CircleBar$BarAnimation;->this$0:Lcom/smalife/utils/CircleBar;

    iget-object v1, p0, Lcom/smalife/utils/CircleBar$BarAnimation;->this$0:Lcom/smalife/utils/CircleBar;

    invoke-static {v1}, Lcom/smalife/utils/CircleBar;->access$0(Lcom/smalife/utils/CircleBar;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    .line 166
    iget-object v2, p0, Lcom/smalife/utils/CircleBar$BarAnimation;->this$0:Lcom/smalife/utils/CircleBar;

    invoke-static {v2}, Lcom/smalife/utils/CircleBar;->access$1(Lcom/smalife/utils/CircleBar;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 165
    invoke-static {v0, v1}, Lcom/smalife/utils/CircleBar;->access$3(Lcom/smalife/utils/CircleBar;F)V

    .line 167
    iget-object v0, p0, Lcom/smalife/utils/CircleBar$BarAnimation;->this$0:Lcom/smalife/utils/CircleBar;

    iget-object v1, p0, Lcom/smalife/utils/CircleBar$BarAnimation;->this$0:Lcom/smalife/utils/CircleBar;

    invoke-static {v1}, Lcom/smalife/utils/CircleBar;->access$0(Lcom/smalife/utils/CircleBar;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/smalife/utils/CircleBar;->access$4(Lcom/smalife/utils/CircleBar;I)V

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/smalife/utils/CircleBar$BarAnimation;->this$0:Lcom/smalife/utils/CircleBar;

    invoke-virtual {v0}, Lcom/smalife/utils/CircleBar;->postInvalidate()V

    .line 178
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/smalife/utils/CircleBar$BarAnimation;->this$0:Lcom/smalife/utils/CircleBar;

    iget-object v1, p0, Lcom/smalife/utils/CircleBar$BarAnimation;->this$0:Lcom/smalife/utils/CircleBar;

    invoke-static {v1}, Lcom/smalife/utils/CircleBar;->access$0(Lcom/smalife/utils/CircleBar;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/smalife/utils/CircleBar$BarAnimation;->this$0:Lcom/smalife/utils/CircleBar;

    invoke-static {v2}, Lcom/smalife/utils/CircleBar;->access$1(Lcom/smalife/utils/CircleBar;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/smalife/utils/CircleBar;->access$2(Lcom/smalife/utils/CircleBar;I)V

    .line 174
    iget-object v0, p0, Lcom/smalife/utils/CircleBar$BarAnimation;->this$0:Lcom/smalife/utils/CircleBar;

    iget-object v1, p0, Lcom/smalife/utils/CircleBar$BarAnimation;->this$0:Lcom/smalife/utils/CircleBar;

    invoke-static {v1}, Lcom/smalife/utils/CircleBar;->access$0(Lcom/smalife/utils/CircleBar;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x168

    iget-object v2, p0, Lcom/smalife/utils/CircleBar$BarAnimation;->this$0:Lcom/smalife/utils/CircleBar;

    invoke-static {v2}, Lcom/smalife/utils/CircleBar;->access$1(Lcom/smalife/utils/CircleBar;)I

    move-result v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/smalife/utils/CircleBar;->access$3(Lcom/smalife/utils/CircleBar;F)V

    .line 175
    iget-object v0, p0, Lcom/smalife/utils/CircleBar$BarAnimation;->this$0:Lcom/smalife/utils/CircleBar;

    iget-object v1, p0, Lcom/smalife/utils/CircleBar$BarAnimation;->this$0:Lcom/smalife/utils/CircleBar;

    invoke-static {v1}, Lcom/smalife/utils/CircleBar;->access$0(Lcom/smalife/utils/CircleBar;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/smalife/utils/CircleBar;->access$4(Lcom/smalife/utils/CircleBar;I)V

    goto :goto_0
.end method
