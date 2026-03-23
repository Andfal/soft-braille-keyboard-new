.class Lcom/myopicmobile/textwarrior/android/c$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/myopicmobile/textwarrior/android/c;->restoreUiState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/myopicmobile/textwarrior/android/c;


# direct methods
.method constructor <init>(Lcom/myopicmobile/textwarrior/android/c;III)V
    .locals 0

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$j;->d:Lcom/myopicmobile/textwarrior/android/c;

    iput p2, p0, Lcom/myopicmobile/textwarrior/android/c$j;->a:I

    iput p3, p0, Lcom/myopicmobile/textwarrior/android/c$j;->b:I

    iput p4, p0, Lcom/myopicmobile/textwarrior/android/c$j;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$j;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v1, p0, Lcom/myopicmobile/textwarrior/android/c$j;->a:I

    iget v2, p0, Lcom/myopicmobile/textwarrior/android/c$j;->b:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/myopicmobile/textwarrior/android/c;->setSelectionRange(II)V

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/c$j;->c:I

    iget v1, p0, Lcom/myopicmobile/textwarrior/android/c$j;->b:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$j;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c;->focusSelectionStart()V

    :cond_0
    return-void
.end method
