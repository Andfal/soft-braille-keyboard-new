.class Lf2/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/translate/TransApi$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf2/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/translate/TransApi$OnResultListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/translate/TransApi$OnResultListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lf2/a$a;->a:Lcom/baidu/translate/TransApi$OnResultListener;

    iput-object p2, p0, Lf2/a$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lf2/a$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lf2/a$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransResult(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lf2/a$a;->a:Lcom/baidu/translate/TransApi$OnResultListener;

    invoke-interface {v0, p1}, Lcom/baidu/translate/TransApi$OnResultListener;->onTransResult(Ljava/lang/String;)V

    iget-object v0, p0, Lf2/a$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lf2/a$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lf2/a$a;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/nirenr/talkman/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
