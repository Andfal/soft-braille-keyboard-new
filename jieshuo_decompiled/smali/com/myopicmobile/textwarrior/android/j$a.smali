.class Lcom/myopicmobile/textwarrior/android/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/myopicmobile/textwarrior/android/j;->onLongPress(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/myopicmobile/textwarrior/android/j;


# direct methods
.method constructor <init>(Lcom/myopicmobile/textwarrior/android/j;)V
    .locals 0

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/j$a;->a:Lcom/myopicmobile/textwarrior/android/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/j$a;->a:Lcom/myopicmobile/textwarrior/android/j;

    iget-object p1, p1, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/myopicmobile/textwarrior/android/c;->selectText(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/j$a;->a:Lcom/myopicmobile/textwarrior/android/j;

    iget-object p1, p1, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/c;->selectAll()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/j$a;->a:Lcom/myopicmobile/textwarrior/android/j;

    iget-object p1, p1, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/c;->paste()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/j$a;->a:Lcom/myopicmobile/textwarrior/android/j;

    iget-object p1, p1, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/c;->cut()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/j$a;->a:Lcom/myopicmobile/textwarrior/android/j;

    iget-object p1, p1, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/c;->copy()V

    :goto_0
    return-void
.end method
