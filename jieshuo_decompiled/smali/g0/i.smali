.class Lg0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lg0/h;


# direct methods
.method constructor <init>(Lg0/h;)V
    .locals 0

    iput-object p1, p0, Lg0/i;->a:Lg0/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lg0/i;->a:Lg0/h;

    invoke-static {v0}, Lg0/h;->a(Lg0/h;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lg0/h;->c(Lg0/h;Ljava/util/List;)V

    return-void
.end method
