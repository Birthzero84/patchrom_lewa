.class Llewa/widget/HorizontalListView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/widget/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/widget/HorizontalListView;


# direct methods
.method constructor <init>(Llewa/widget/HorizontalListView;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Llewa/widget/HorizontalListView$3;->this$0:Llewa/widget/HorizontalListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private isEventWithinView(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 8
    .parameter "e"
    .parameter "child"

    .prologue
    .line 432
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 433
    .local v5, viewRect:Landroid/graphics/Rect;
    const/4 v6, 0x2

    new-array v1, v6, [I

    .line 434
    .local v1, childPosition:[I
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 435
    const/4 v6, 0x0

    aget v2, v1, v6

    .line 436
    .local v2, left:I
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int v3, v2, v6

    .line 437
    .local v3, right:I
    const/4 v6, 0x1

    aget v4, v1, v6

    .line 438
    .local v4, top:I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int v0, v4, v6

    .line 439
    .local v0, bottom:I
    invoke-virtual {v5, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    return v6
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 373
    iget-object v0, p0, Llewa/widget/HorizontalListView$3;->this$0:Llewa/widget/HorizontalListView;

    invoke-virtual {v0, p1}, Llewa/widget/HorizontalListView;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 378
    iget-object v0, p0, Llewa/widget/HorizontalListView$3;->this$0:Llewa/widget/HorizontalListView;

    invoke-virtual {v0, p1, p2, p3, p4}, Llewa/widget/HorizontalListView;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "e"

    .prologue
    .line 416
    iget-object v0, p0, Llewa/widget/HorizontalListView$3;->this$0:Llewa/widget/HorizontalListView;

    invoke-virtual {v0}, Llewa/widget/HorizontalListView;->getChildCount()I

    move-result v6

    .line 417
    .local v6, childCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 418
    iget-object v0, p0, Llewa/widget/HorizontalListView$3;->this$0:Llewa/widget/HorizontalListView;

    invoke-virtual {v0, v7}, Llewa/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 419
    .local v2, child:Landroid/view/View;
    invoke-direct {p0, p1, v2}, Llewa/widget/HorizontalListView$3;->isEventWithinView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Llewa/widget/HorizontalListView$3;->this$0:Llewa/widget/HorizontalListView;

    #getter for: Llewa/widget/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Llewa/widget/HorizontalListView;->access$500(Llewa/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Llewa/widget/HorizontalListView$3;->this$0:Llewa/widget/HorizontalListView;

    #getter for: Llewa/widget/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Llewa/widget/HorizontalListView;->access$500(Llewa/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    iget-object v1, p0, Llewa/widget/HorizontalListView$3;->this$0:Llewa/widget/HorizontalListView;

    iget-object v3, p0, Llewa/widget/HorizontalListView$3;->this$0:Llewa/widget/HorizontalListView;

    #getter for: Llewa/widget/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v3}, Llewa/widget/HorizontalListView;->access$300(Llewa/widget/HorizontalListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v7

    iget-object v4, p0, Llewa/widget/HorizontalListView$3;->this$0:Llewa/widget/HorizontalListView;

    iget-object v4, v4, Llewa/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v5, p0, Llewa/widget/HorizontalListView$3;->this$0:Llewa/widget/HorizontalListView;

    #getter for: Llewa/widget/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v5}, Llewa/widget/HorizontalListView;->access$300(Llewa/widget/HorizontalListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v7

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    .line 429
    .end local v2           #child:Landroid/view/View;
    :cond_0
    return-void

    .line 417
    .restart local v2       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 383
    iget-object v1, p0, Llewa/widget/HorizontalListView$3;->this$0:Llewa/widget/HorizontalListView;

    monitor-enter v1

    .line 384
    :try_start_0
    iget-object v0, p0, Llewa/widget/HorizontalListView$3;->this$0:Llewa/widget/HorizontalListView;

    iget v2, v0, Llewa/widget/HorizontalListView;->mNextX:I

    float-to-int v3, p3

    add-int/2addr v2, v3

    iput v2, v0, Llewa/widget/HorizontalListView;->mNextX:I

    .line 385
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    iget-object v0, p0, Llewa/widget/HorizontalListView$3;->this$0:Llewa/widget/HorizontalListView;

    invoke-virtual {v0}, Llewa/widget/HorizontalListView;->requestLayout()V

    .line 388
    const/4 v0, 0x1

    return v0

    .line 385
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "e"

    .prologue
    .line 393
    iget-object v0, p0, Llewa/widget/HorizontalListView$3;->this$0:Llewa/widget/HorizontalListView;

    invoke-virtual {v0}, Llewa/widget/HorizontalListView;->getChildCount()I

    move-result v6

    .line 394
    .local v6, childCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_1

    .line 395
    iget-object v0, p0, Llewa/widget/HorizontalListView$3;->this$0:Llewa/widget/HorizontalListView;

    invoke-virtual {v0, v7}, Llewa/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 396
    .local v2, child:Landroid/view/View;
    invoke-direct {p0, p1, v2}, Llewa/widget/HorizontalListView$3;->isEventWithinView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    iget-object v0, p0, Llewa/widget/HorizontalListView$3;->this$0:Llewa/widget/HorizontalListView;

    #getter for: Llewa/widget/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Llewa/widget/HorizontalListView;->access$200(Llewa/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Llewa/widget/HorizontalListView$3;->this$0:Llewa/widget/HorizontalListView;

    #getter for: Llewa/widget/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Llewa/widget/HorizontalListView;->access$200(Llewa/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Llewa/widget/HorizontalListView$3;->this$0:Llewa/widget/HorizontalListView;

    iget-object v3, p0, Llewa/widget/HorizontalListView$3;->this$0:Llewa/widget/HorizontalListView;

    #getter for: Llewa/widget/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v3}, Llewa/widget/HorizontalListView;->access$300(Llewa/widget/HorizontalListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v7

    iget-object v4, p0, Llewa/widget/HorizontalListView$3;->this$0:Llewa/widget/HorizontalListView;

    iget-object v4, v4, Llewa/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v5, p0, Llewa/widget/HorizontalListView$3;->this$0:Llewa/widget/HorizontalListView;

    #getter for: Llewa/widget/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v5}, Llewa/widget/HorizontalListView;->access$300(Llewa/widget/HorizontalListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v7

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 402
    :cond_0
    iget-object v0, p0, Llewa/widget/HorizontalListView$3;->this$0:Llewa/widget/HorizontalListView;

    #getter for: Llewa/widget/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;
    invoke-static {v0}, Llewa/widget/HorizontalListView;->access$400(Llewa/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Llewa/widget/HorizontalListView$3;->this$0:Llewa/widget/HorizontalListView;

    #getter for: Llewa/widget/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;
    invoke-static {v0}, Llewa/widget/HorizontalListView;->access$400(Llewa/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    iget-object v1, p0, Llewa/widget/HorizontalListView$3;->this$0:Llewa/widget/HorizontalListView;

    iget-object v3, p0, Llewa/widget/HorizontalListView$3;->this$0:Llewa/widget/HorizontalListView;

    #getter for: Llewa/widget/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v3}, Llewa/widget/HorizontalListView;->access$300(Llewa/widget/HorizontalListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v7

    iget-object v4, p0, Llewa/widget/HorizontalListView$3;->this$0:Llewa/widget/HorizontalListView;

    iget-object v4, v4, Llewa/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v5, p0, Llewa/widget/HorizontalListView$3;->this$0:Llewa/widget/HorizontalListView;

    #getter for: Llewa/widget/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v5}, Llewa/widget/HorizontalListView;->access$300(Llewa/widget/HorizontalListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v7

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 411
    .end local v2           #child:Landroid/view/View;
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 394
    .restart local v2       #child:Landroid/view/View;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method
