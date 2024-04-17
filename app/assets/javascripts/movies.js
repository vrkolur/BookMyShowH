document.addEventListener('DOMContentLoaded', function () {
    document.querySelectorAll('.card').forEach(card => {
        card.addEventListener('click', function () {
            const aboutDiv = this.querySelector('.card-footer');
            aboutDiv.style.display = aboutDiv.style.display === 'none' ? 'block' : 'none';
        });
    });
});
