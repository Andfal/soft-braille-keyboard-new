.class Lcom/myopicmobile/textwarrior/android/c$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/myopicmobile/textwarrior/android/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/myopicmobile/textwarrior/android/c;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/myopicmobile/textwarrior/android/c;


# direct methods
.method constructor <init>(Lcom/myopicmobile/textwarrior/android/c;)V
    .locals 0

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$g;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectionChanged(ZII)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$g;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {p1}, Lcom/myopicmobile/textwarrior/android/c;->c(Lcom/myopicmobile/textwarrior/android/c;)Lcom/myopicmobile/textwarrior/android/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/b;->d()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$g;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {p1}, Lcom/myopicmobile/textwarrior/android/c;->c(Lcom/myopicmobile/textwarrior/android/c;)Lcom/myopicmobile/textwarrior/android/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/b;->c()V

    :goto_0
    return-void
.end method
